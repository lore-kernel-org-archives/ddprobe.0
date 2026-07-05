Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB41357D08
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783265914; cv=none; b=eI2qX8pAJShAAX4s8fXwH/9hgBWm1wCniB3HLvCOs9VNPLE7CLAu7jw8WPwyp1qMK3AAfuz7LWEaFE2lzfp053L5eHuX7FBiyQDfsM7vw6T3/4BPqaj18fP7qjj5UnSyyYS83KUMOLNAncemydpw5Uz5EbjSS3m7W9Rn0ogR4Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783265914; c=relaxed/simple;
	bh=CWL8/sK4oUOuryhe+P/gfNRMD2f5xQoAZl3pdC4YBl4=;
	h=To:Subject:From:Message-Id:Date; b=Hwt8zdcPfvI7mL0O5C8C4nQxpON/7WRgjQiAFCeWrCDWzOUSXzEvHg10mCcTYLwTeNIQRBkTjOPdv7XpLpQLxKKiNu/i2PLUidKXsgOdpWqd4Co6LFw2KIQtwfQDmxP1FBqYPFIzRFjjGYCnZQ+Jw13iFLOxGgjBCEG3SW3WYrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwRg6+10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwRg6+10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA540C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783265913;
	bh=CWL8/sK4oUOuryhe+P/gfNRMD2f5xQoAZl3pdC4YBl4=;
	h=To:Subject:From:Date:From;
	b=VwRg6+106uLIBB7iFni+FPrP6uTh/T16OITcVQR+A7ebF5br7uvGGOo0NC2KuViq2
	 R+k53D4g4kaixvzUtOhf/qAGlgSsXm8C78QDqGpx8A41KRW7Wx2A8dnCHmsCkEtm0R
	 yyokivgS4WiHD9MYy+Rn6k4cfs82PB+XC42KmTMB3fxtdhRC6HfuhR4cRO2ULyrdWS
	 iaUkK/PP9FL7IHJ3fljjH5Vg2S5hp0ipFo8jFSQP3a/koqDKFFmy+56lcD4poJYzoL
	 1M5X6mEkwplCNucg0edKwju2Oj51OBBz9eJQRTAAOb/q7XocAFKCD/DrVY9rAx6YBx
	 1LDxO7cksZbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80F6C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326591368.3543.10787585221055904922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89ecd8f6b958343125d0acd65370ba8f6dce7c2afb7702966e7f47bff370f38
Date: Sun, 05 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783265913
