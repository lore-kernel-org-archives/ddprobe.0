Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D04D28F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvQSfC/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B982C433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700284096;
	bh=wXN0tefhD4nHzHoIpA9nNqsmME5+wJGRk3Vm2TL8k6E=;
	h=To:Subject:From:Date:From;
	b=QvQSfC/rkPspy3xOBW+5bdCqvM5edVv/9YoomzCRnWCjP3CvobGODz/LsaVztUGm9
	 XZ8ShxvAiVLoGtiRUIRN1lVZNZ/nKprtmjdZ/Gggas8oIpVAHGiZQwJTYyVGgqv534
	 MFqJO1OkDBRK/qYrEm1SXDum92r/3CqJFn7NMKhEO+MQrK9ZuG3AgkmMuncMJPAx1V
	 Dl6IR33aqCdiaMcw9LDoUggyUYAQqMlvxjxr4dgrtFofwTBOwa1Spxfj2W5NSmEda+
	 iyJMByFWvM9A0W4LDBG4XSAGCNLRPttexsO+2CGa6IkfwaXfe1gSMC7wwKT7usgqEj
	 6Kwub056PVQIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70125C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170028409643.14038.2041672480693537358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6636d567b9763e81a9e263613c3a3ab409028996aa42e3d1d2ce6bf6af406dba
Date: Sat, 18 Nov 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700284096
