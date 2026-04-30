Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1CDEACD
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777514854; cv=none; b=b2jBbZHooPnHu+qMuUO+bN5R0+vq6RjrYCTJFms3c0Pw9kHmQnJ1IzxZMXp7dolu7K+NQEr7eFAmwB0uPNur7zR3gci6PmYdo8+wlqk2tebauB3H8JDJcFTazeU6Pz1/+rqlyq3SaNnhaaVgnUzamC3qe8n5kjl995XWmzjbmhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777514854; c=relaxed/simple;
	bh=mcWM/z6P95A7JCHeCLU3SHjLIB1JNQmdQDT2/bAZbcw=;
	h=To:Subject:From:Message-Id:Date; b=eI3PXu+CfFuLGU8iPJ4KFbCpfI/p4w5jlZ/jpA1eTD7mYSOJviOCnKlgu++OBWJnZRLuvem7lfb6nqfGoR4rybtztaIBxUvjo9bsGLb/NHpQi7VBWNYkY2Wk/I0vZwyi05iHtAatwkKg2cWNBng01dmQVM4oC5OmFC6NSg7/588=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnhYjWp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnhYjWp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA696C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777514853;
	bh=mcWM/z6P95A7JCHeCLU3SHjLIB1JNQmdQDT2/bAZbcw=;
	h=To:Subject:From:Date:From;
	b=XnhYjWp8p4ePcMn3+vT8hk/guAToIjUE6W2zyYdF+wZw5g31iDCfi3wqyNId5b7/G
	 B28QtRp10T5FtpNcf4NgB/chR+i0/LDC904cUBsgYeP1dxefymSY4hSNpBhcWcYpb7
	 9rEb7G1EfrUT2A8MI9REcNQklowxeGhuzn7vv7dB4KBCD2CMc3OfQnHfI69Nd0AqXz
	 c1Ivr5pL6uvdlIY3EyEuUK8y93zCP1AVL+0ZPW2ERpYdTcHOBAkuztmIhsleMhrWxh
	 82eUeShNORqQxMq3Jk3q03J3U9AnPRS3CtFbAGNOK0tcI+azx151JhERoDZxMG9Yh9
	 AnZFZhzidUpZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC3FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751485368.4639.13466629894614062460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788c9d2811bf57002654196a68f9c12321948c84a754799bbeab97f17e756cc6
Date: Thu, 30 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777514853
