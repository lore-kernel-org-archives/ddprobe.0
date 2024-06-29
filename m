Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471CA2033E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719657863; cv=none; b=MkIB3wuc6YrWm3CEtoG8jObLEJcwvEcp7j73kAfe1A91NLCIbPrLzgz1t0tgfvcmf7Xz31fxUyMIxz7Yfv+rlXhnsf/ZJSw2gMp5z0Y2RUSoQquCSYIg0w1sOHE7HZIRcFjSgzIL5LPD4CS70lwSVCbm/qELf+BtvsWXQc0uPv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719657863; c=relaxed/simple;
	bh=Yl9jK1pkMFNbRqkAMO0PO/KWo+tuBwQH1W0Hk5inMdI=;
	h=To:Subject:From:Message-Id:Date; b=Ol2ORjQtNmSMObeBEok+yckxgwm9qXWiXnvpcIM0V8YxP8cOtu+eAJTH+8Sb/DG4ylPSw29cEwZyz7b1xP0xTTvfoJZ6l2JZGbH0zqzB3hIDckYRQDn9rGB0qEFLbDaWufiPSyboWXJoymLN51JUDOlJDrrstR3sRbO7cnNYnvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGoxiwXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGoxiwXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACDAC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719657862;
	bh=Yl9jK1pkMFNbRqkAMO0PO/KWo+tuBwQH1W0Hk5inMdI=;
	h=To:Subject:From:Date:From;
	b=OGoxiwXy+EFsGATj0GXIDbpgBPSKoyhGM5idrHwS78pibU9Kt3GzXDMxlB0Q4EFho
	 cfC+HiLc5Xr4wRsdva4TZJ63qq0ufbw2DQFMuETnWNLfpEwoN2Lj13eHyvCsXeORGE
	 LjFpPLPVFvYIk7npJG5BeSW09TNlSxS44XY5VPfTZJ9C97DNsGnteXQ92asDrkdoRB
	 zmN+dlRLiQfx7FnizAzoarCu/fTxY7lI6RWhiR0kP45xL/SU3BflTW7BH2CgrKdlp6
	 c9E5jGnTO1fEjtI3DYb3z4y7bYMApyZ1fARxVwbiVCnVi0t+5YV7zSyMD/1nOiCnFb
	 ztiIyCTTFFcuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6801C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965786277.2864.6842325790933776856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae1f4a4bac63163b562de795452571499132f4445b6c91b300bd2067f942805
Date: Sat, 29 Jun 2024 10:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719657862
