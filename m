Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8C01A9F87
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766385834; cv=none; b=eiQ/oC30lN+upebvTAkTi86qh+o/Amf3W0fYf0yOi0Cru/UHdXhaU3q9Zf0Q2VtLT8gIGiMPPjx3dwJ56tMZpoxrj3e/JMCvJsSLlL6s/m1Tffcjq3d3uZAbYvSc3GXPQ7QWX0Bv6+AdQSN9xQfZFtMXYm9P4yXnoZUJp4HsH/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766385834; c=relaxed/simple;
	bh=BxrbucwnVl5Qv01igTuZZuxu7GyCPvZ67gN/YJehet4=;
	h=To:Subject:From:Message-Id:Date; b=L//wWh7AxTioqIvVFrJpsFETwI+A5+sjfvoeT2/otlmDmg1aHYZC2kq7WkFtsZ7Ql3Frod2E3uQQx67azkj4E1NAfBf0WRL9t2SzOFqIHVMUJPWJAY3CCx3h/WzI+BXMd/3CCJ0EcOsr6nRmt6Zqrki71hVoml4qX49BArN8rWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=un0xnbDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="un0xnbDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2F0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766385833;
	bh=BxrbucwnVl5Qv01igTuZZuxu7GyCPvZ67gN/YJehet4=;
	h=To:Subject:From:Date:From;
	b=un0xnbDBfkBsRwFVuOjGa6yxp0kuKd69aoWvI3LcY++7RivX079Ce6Ed7KNuPveov
	 uhHaLt5oxOvSfVWlitpoAldkhZ/kfDVrXOlHlb4Usu4bJx8UdyO4UCBKDRbt7cHDN3
	 DiQBNMcLwcjMcHfO8zgirPCsysOD318svrRmCvCTQmDZowJVbQoWnC/Zqel8y4RmfV
	 nNgFTc2/D8gLcqgdZUOTR+zv6HER3qdWL8LNiTkwPk19pCjSh2axFexRktTHaDmuln
	 ndVs56ySJCXRIUhYI4IKLndEVTI2j9YZBZfj3DtW0xK56dSyf3cjBpgPz18wrxk5F7
	 T4CxPdwipWEvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DBD711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638583357.30081.12736000363154686827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e90f89c86d598403b82a0ad5a0e5be744590d50c3a604341b50527221ec7602
Date: Mon, 22 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766385833
