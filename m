Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482E8155A25
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745038794; cv=none; b=AZDWL+5eDmi9hgtNJ6xaj3b01xrRep02tASNYj0zXY+fBzx9Y+yCfdzRdC46HJ2kfZPnZfccpLFWDvU8Cmf4hsOJ5G4KDICCrojbOCLBSCByWsy7/sgarqQ7PqK91RdNY6Mn+jDb3talSH6x0Gw+upCrjkxxELhBWZGzQujlryc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745038794; c=relaxed/simple;
	bh=u+yU/zHBVy/O0D3CNKaC5gYuU5ORKvXkx8+QhzA+N+E=;
	h=To:Subject:From:Message-Id:Date; b=uwOGfHCDp5C2d5iniBOxppvJFe+hPPpAsdSyV0hmUdgrZz/D3BP4kQJNMZGhFOdvHAV7xQR2tH/yH+7EMO5Dkhz5hOzNnuogL0U62gYdF8csQg1xfvWjhtcuFsM/bD0jSVfubXoRTnzxGWMVA1PeMgEBITImyOulCimlXHMAf80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyYm4PDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyYm4PDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B353DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745038793;
	bh=u+yU/zHBVy/O0D3CNKaC5gYuU5ORKvXkx8+QhzA+N+E=;
	h=To:Subject:From:Date:From;
	b=lyYm4PDx4X027p4PjO0T17K/zrupp9Lxd1rniCVIfNTuJfhUUsTULeuuUaXHoZxS/
	 ImlI24hTijN1RvWbGTRfLhV+cwweWpaQJzF10IWFlZKOksdMQHHyaXcAqMzhYgz3Xd
	 6uPmoI1jfQLGixl/vhq19S+s8aFeGM6B5Jg73nBHS0y80/nrU6gAlkK54pxVu9puEL
	 9Tli70995gS2qpXicW4HfZJAzFPaaVYFPCa0g0dff+cmV3RBuNIFL3Euz8cdjpDLxh
	 HMGe4Z0/vpowYO83TJjP6jorZOI//Aj/62hRjRYE9gWJNJnQHzcI4QwgLwNRA38wd+
	 Kg8AXBEioqy+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC71C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503879360.4955.269354978290547546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7b23f969b8c644ea2bf44bf586582f4518be1ce96c14ce46b3dbdb47f0946a
Date: Sat, 19 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745038793
