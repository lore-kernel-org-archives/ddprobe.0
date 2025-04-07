Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498B521C9E0
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744049394; cv=none; b=MYGODsF9UoCT890SAxybs29P4iKsf3icg/ocMATu9NPTlToZGTtGI1kknox/8hAk0iXdq/V785HQD5hIhTOIDAyfbYi0l9lqCaThgH42KDk0gGsIK5UOjktbpzQIqI7mlp5IlObnnzDOJFRq/1kdmmsU2RIFo91rG3QdkgTEKYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744049394; c=relaxed/simple;
	bh=96feIYT6w2MvusX3IFMhsZuTN2+uCnocO/KSm2irftg=;
	h=To:Subject:From:Message-Id:Date; b=hRCdKHNINlgH5HC1jJDI4kt0DZETHHMqAdC5CLu1oWQCJY8+XBkw3i6X3LfPOSJSrCAQq8ve1kkkuQQWdBzCok5SZBf0Xn1VN+9+J4GCAHmXkzIzOjtOEcNN0etozYCHkAiOMYmE+rzSk+1ZwNY6L5/ZuJh09NPOoXRFsYy+CHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EA14jKxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EA14jKxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07C1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744049393;
	bh=96feIYT6w2MvusX3IFMhsZuTN2+uCnocO/KSm2irftg=;
	h=To:Subject:From:Date:From;
	b=EA14jKxD2MXWzTPDFWtvWLGArg4XlC3skitQklOXTfnPzoAmEn/bu1fmYY68AXN+s
	 K7bG3v9z/aNp/cXDPydPE1OITQ1WKBf+tOrXC1xA9GQL6EYCoJsICYcuM7mo2E2PjY
	 Rkhr1sLsyAs4oZ5mVJTR9c5I9RGlB9VMhKdqYUdOLGfPjrB3oVIEEtE8xcPpoFaM5o
	 i5Z4+Vorj2NW0YpRlY6pWbYfAi2bEB0sIqLPUYkhS9EpjQf3CIozWtAwYqf0rHz+Dg
	 afFUONzwj5IfEMt0FeB9BiWkKbL+jRuNbMpuD7XYNEw+9XKqnYWtwGt8bmd3uf1A4O
	 SrDrwIsuViNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E0DC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404939367.10239.1856904626825938885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1237b63928cc1440668518c1a6edfb56c1448741ec6561d455688984a0156be0
Date: Mon, 07 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744049393
