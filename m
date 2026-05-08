Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246F97261C
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778211454; cv=none; b=X+UG6mqE7a7Vw+722vGloNAVf/XLTcyOMk1CSfcdxCBSwd29zuLZi/VOLUWTFCnAQxZbF7EJACTycMr4QvIn/zKHsaN/mbHL/5sGUsZdDgGhIMj2Ma8kagZI9M9+nhHpvnm4hUnMDgjYG6UjduvUCykXSLrUUmFrDbRdElXQqoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778211454; c=relaxed/simple;
	bh=QYP19rmi5sJoQtVfXF8c3Yt+pJfwqjJbcZh7kdQ9uR0=;
	h=To:Subject:From:Message-Id:Date; b=AHNR0YnLhA1I6IQ3g3DY5yKr24qXwvJJxom9ov7bP3F437IyfKDZ3xDWy/PfaU27HGVISOpScs19HwCDdxSBOEVTFOHE+FId9lHhoZWApcZxGX/pbzUKSyQA0UJ/QDpB27NMIU2ovbsZij8ZeWjJu1IZuFvlS6tZB4zsqwKyFKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVOxWObX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVOxWObX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE3F0C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778211453;
	bh=QYP19rmi5sJoQtVfXF8c3Yt+pJfwqjJbcZh7kdQ9uR0=;
	h=To:Subject:From:Date:From;
	b=uVOxWObXzdi8/tVClcffS5/ywe1KCKln9pm49FOQqOHVw7+w7MchTQA0rB5dMJ47o
	 vFaheYHh2wM4u79gVHlOCukUPK2Pkrs6T05j2BkYPfGLV0jSaPRgumdmbiLzV4yh8Y
	 aV5r/+ZnloSsAAt5VZY8GxPKgHgLOsa3icqxhfGU6+UhaDNNdjYBlUJfm3nI8rSb6G
	 HSAhC3Xf7kfQpN5qIaiDL8YsI26gvVF+XlTuFCiKpfDsSh/Sh6Fe+8dQyqQuCz/H6f
	 BRixPRTveceQoq6pFPLTEHPo1wHgRpnnFckPW1CjMT9354KYKCRCQOh54EKBqlv0z/
	 +wSohKjy5ARsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB239CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821145369.558.339853681094722360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdfb1b95d35e22bf7908508cfd279dc14d71ab5d0f5b5479c5933541f341312
Date: Fri, 08 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778211453
