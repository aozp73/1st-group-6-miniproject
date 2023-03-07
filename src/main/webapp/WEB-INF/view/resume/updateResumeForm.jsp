<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>

        <div class="mx-auto width-53 top-80">
            <div class="container">
                <form>
                    <div class="row">
                        <div class="col-9">
                            <br>
                            이력서 수정<br>
                            <hr />
                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">기본 정보</div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="my-border col-3 mt-3" style="text-align: center;">
                                            <img class="" src="${rDto.photo}" alt="" srcset=""
                                                style="width: 80%; height: auto; display: inline-block;" id="photo">
                                        </div>

                                        <div class="col-2 pt-3">
                                            <div class="mb-2">
                                                이름
                                            </div>
                                            <div class="mb-2">
                                                번호
                                            </div>
                                            <div class="mb-2">
                                                email
                                            </div>
                                            <div class="mb-2">
                                                주소
                                            </div>
                                            <div class="mb-2">
                                                생년월일
                                            </div>
                                        </div>
                                        <div class="col-7 pt-3">
                                            <div class="mb-2" id="compName">
                                                ${rDto.name}
                                                <input type="hidden" id="compName1" value="${rDto.name}">
                                            </div>
                                            <div class="mb-2" id="compName">
                                                ${rDto.tel}
                                                <input type="hidden" id="compName1" value="${rDto.tel}">
                                            </div>
                                            <div class="mb-2" id="compName">
                                                ${rDto.email}
                                                <input type="hidden" id="compName1" value="${rDto.email}">
                                            </div>
                                            <div class="mb-2" id="representativeName">
                                                ${rDto.address}
                                                <input type="hidden" id="representativeName1" value="${rDto.address}">
                                            </div>
                                            <div class="mb-2" id="homepage">
                                                ${rDto.birth}
                                                <input type="hidden" id="homepage1" value="${rDto.birth}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">학력 사항</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <select class="form-select" name="education" id="education">
                                            <option selected disabled>학력 사항을 선택해주세요</option>
                                            <option value="초졸" ${rDto.education=='초졸' ? 'selected="selected"' : '' }>초졸
                                            </option>
                                            <option value="중졸" ${rDto.education=='중졸' ? 'selected="selected"' : '' }>중졸
                                            </option>
                                            <option value="고졸" ${rDto.education=='고졸' ? 'selected="selected"' : '' }>고졸
                                            </option>
                                            <option value="대졸" ${rDto.education=='대졸' ? 'selected="selected"' : '' }>대졸
                                            </option>
                                            <option value="대학원 이상" ${rDto.education=='대학원 이상' ? 'selected="selected"'
                                                : '' }>대학원 이상</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">경력 사항</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <select class="form-select" name="career" id="career">
                                            <option selected disabled>경력 사항을 선택해주세요</option>
                                            <option value="신입" ${rDto.career=='신입' ? 'selected="selected"' : '' }>신입
                                            </option>
                                            <option value="1년차 미만" ${rDto.career=='1년차 미만' ? 'selected="selected"' : ''
                                                }>1년차 미만</option>
                                            <option value="1년" ${rDto.career=='1년' ? 'selected="selected"' : '' }>1년
                                            </option>
                                            <option value="2년" ${rDto.career=='2년' ? 'selected="selected"' : '' }>2년
                                            </option>
                                            <option value="3년" ${rDto.career=='3년' ? 'selected="selected"' : '' }>3년
                                            </option>
                                            <option value="4년" ${rDto.career=='4년' ? 'selected="selected"' : '' }>4년
                                            </option>
                                            <option value="5년" ${rDto.career=='5년' ? 'selected="selected"' : '' }>5년
                                            </option>
                                            <option value="6년" ${rDto.career=='6년' ? 'selected="selected"' : '' }>6년
                                            </option>
                                            <option value="7년" ${rDto.career=='7년' ? 'selected="selected"' : '' }>7년
                                            </option>
                                            <option value="8년차 이상" ${rDto.career=='8년차 이상' ? 'selected="selected"' : ''
                                                }>8년차 이상</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">보유 기술</div>
                                <div class="card-body">
                                    <div class="row my-3 my-border">
                                        <div id="my-table-body2">
                                            <table class="my-table table table-bordered"
                                                style="background-color: white;">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="Java" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='Java' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > Java
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="JavaScript" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='JavaScript' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > JavaScript
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="Spring" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='Spring' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > Spring
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="HTML" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='HTML' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > HTML
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="jQuery" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='jQuery' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > jQuery
                                                                </label>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="JSP" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='JSP' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > JSP
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="Vue.js" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='Vue.js' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > Vue.js
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="Oracle" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='Oracle' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > Oracle
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="MySQL" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='MySQL' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > MySQL
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="form-check text-center">
                                                                <label class="form-check-label">
                                                                    <input class="form-check-input" type="checkbox"
                                                                        name="skillList" value="React" <c:forEach
                                                                        items="${rDto.skillList}" var="skill">
                                                                    ${skill=='React' ? 'checked="checked"' : '' }
                                                                    </c:forEach>
                                                                    > React
                                                                </label>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">자기소개서</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <!-- <label for="exampleTextarea" class="form-label mt-4">자기소개서</label>
                        <hr> -->
                                        <textarea class="form-control" name="content" id="content"
                                            rows="3">${rDto.content}</textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">링크</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <input type="text" name="link" id="link" class="form-control"
                                            value="${rDto.link}">
                                    </div>
                                </div>
                            </div>


                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">제목</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <input type="text" name="title" id="title" class="form-control"
                                                value="${rDto.title}">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">이력서 공개 여부</div>
                                <div class="card-body">
                                    <fieldset class="form-group">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="state" id="state" value=1
                                                ${rDto.state=='1' ? 'checked' : '' } checked="">
                                            <label class="form-check-label" for="optionsRadios1">
                                                공개
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="state" id="state"
                                                value="0" ${rDto.state=='0' ? 'checked' : '' }>
                                            <label class="form-check-label" for="optionsRadios2">
                                                비공개
                                            </label>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>

                        <div class="col-3">
                            <div class="rButton" style="width: 10em;">
                                <br>
                                <div class="row p-1">
                                    <button type="button"
                                        onclick="updateTempResume(`${rDto.resumeId}`,`${principal.userId}`)"
                                        class="btn btn-success w-100">임시 저장</button>
                                </div>
                                <div class="row p-1">
                                    <button onclick="updateResume(`${rDto.resumeId}`,`${principal.userId}`)"
                                        type="button" class="btn btn-success w-100">이력서
                                        수정</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>



        <script>


            let resumeId;
            let userId;
            function updateResume(rId, uId) {
                let data = {
                    title: $("#title").val(),
                    content: $("#content").val(),
                    education: $("#education").val(),
                    career: $("#career").val(),
                    skillList: skillValues,
                    link: $("#link").val(),
                    state: $("#state").val(),
                    userId: uId,
                    resumeId: rId
                }

                $.ajax({
                    type: "put",
                    url: "/user/resume/update",
                    data: JSON.stringify(data),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json" // default : 응답의 mime 타입으로 유추함
                }).done((res) => { // 20X 일때
                    alert(res.msg);
                    location.href = "/user/resume";
                }).fail((err) => { // 40X, 50X 일때
                    alert(err.responseJSON.msg);
                });
            }

            function updateTempResume(rId, uId) {
                let data = {
                    title: $("#title").val(),
                    content: $("#content").val(),
                    education: $("#education").val(),
                    career: $("#career").val(),
                    skillList: skillValues,
                    link: $("#link").val(),
                    state: $("#state").val(),
                    userId: uId,
                    resumeId: rId
                }
                console.log(skillValues);
                $.ajax({
                    type: "put",
                    url: "/user/resume/update",
                    data: JSON.stringify(data),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json" // default : 응답의 mime 타입으로 유추함
                }).done((res) => { // 20X 일때
                    alert(res.msg);
                }).fail((err) => { // 40X, 50X 일때
                    alert(err.responseJSON.msg);
                });
            }

            function getCheckedValues(name) {
                var checkedValues = [];
                var checkboxes = document.getElementsByName(name);
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].checked) {
                        checkedValues.push(checkboxes[i].value);
                    }
                }
                return checkedValues;
            };

            let skillValues;

            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            checkboxes.forEach(function (checkbox) {
                checkbox.addEventListener('click', function () {
                    skillValues = getCheckedValues("skillList");
                })
            });

        </script>

        <%@ include file="../layout/footer.jsp" %>