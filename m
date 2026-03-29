Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A8F376496
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774800294; cv=none; b=PKn6tlcMCIXUWzjVLqWZ5WStwn0MjGPkZaNZ/nra8mRIHX9Iy+F47O0RB37cUzlyxYMXFmHdVG4aFgohR1m+ub+wblXqrn1vW2krygSb+wA016Oe51GIc+svmwlKaTlBkzY1LOiTo8WFj+ckDzEAutRL4A+rkfGedVcF+1Ifv4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774800294; c=relaxed/simple;
	bh=I2JQdsIfin2Dk9q3O0IRs8fmzrrwys3qKHIZyFt+bDU=;
	h=To:Subject:From:Message-Id:Date; b=JE4Lqd9X4voE5M+1KgpDF1tG9AwgQ4i4fpsTqQlR7/9iSvakjpKsFY1L/kaaK0/82WbUThBxrvshWdYJ4DT6+v2m4hRkN0yCqQsYgfkKGEp4/iQengGvTbIbrPnTBXDpokmD+JkoDheY6pU6RSgO0C8GPGgZEOrZS0RiN5lHC8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzQsI02u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzQsI02u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FD8C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774800293;
	bh=I2JQdsIfin2Dk9q3O0IRs8fmzrrwys3qKHIZyFt+bDU=;
	h=To:Subject:From:Date:From;
	b=SzQsI02u86zbLgFFAHUZWS60JUF3BJRE/SdsEOM9EOXEDMBYMwC+NLcMx/MWU4VsP
	 98I6nwMBnUbJADCkPE7X3OYBfV304kB3G/q66j5rWZnpBhYm9YWRLbR4ZrkLu6OUdU
	 aq3uZHon9UdlcC2b/x2ecL5csmzEMEzHKCM0QsHykqtjxYou15GE4L4pV3EOTe1TH0
	 q8cVxMuHsrjgI9zwYkd29qSLP7gYHBhlyX3Jz7ONUJK1Opmd5DEixPRumgTDvIuqdG
	 Wy7YPIBN8ZRZR+jCwUrYO4YQCXMqCYTq+c1PXrsMv5q9cAqDlrLeHeLRGIsAhKPsRR
	 o8jDIM+h6FtFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F80F3D60A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480029358.18170.11608935122792798355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccbbf1ec72620e96ce288d22bbfddb3b54dbd354f9d3048a56963a3fb5f1829
Date: Sun, 29 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774800293
