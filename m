Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995C913D53C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784424514; cv=none; b=jFimDJyV5QjjAP7uV0/RAonaAQxxUAW418wbV7h8PmSn+l7huPXLI+t1sktKyLt5HI0tWBo5SSLv8mXTITugnX48+6W4RWQB0lDzBwgbWvNtrmwO4QhlsAu4zscWeN/l4hrcDpHanwXieLHCPJQA7rZP1ymXvsyDsAWmCsFaz3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784424514; c=relaxed/simple;
	bh=fbYUuHD2QxWJJC1Mk1DQthk+GlNVBiQNYmvpr5Y4dhI=;
	h=To:Subject:From:Message-Id:Date; b=k46XRMH6u0X076XMiktwepRRbn8KYro+ULLjdexyPnClIhTD5CUNFCfVR3T2unOEDrUChddTc6GPT+ic90CBsA9h0tQuHgqYyElyV2O7JBqkl2p9QXmSbAg1GEG8SI8PDzhFEWqPdndZ7QiJKigAZ0wZeZGxh4/+SCmFOqYDtTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5e1goxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5e1goxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25466C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784424514;
	bh=fbYUuHD2QxWJJC1Mk1DQthk+GlNVBiQNYmvpr5Y4dhI=;
	h=To:Subject:From:Date:From;
	b=M5e1goxDPGOzN/xUm3drhOWjk+kr/wrpMwcgUQCSKTyHgoe4COZGnCljUDKHBh5kK
	 BcAErrMEZb9xOsDEpPxhiN1XXFd/PwAJNRTX0MSe8UQbRs7Dbu6CuipZpTi1Sa9oKK
	 R/eAaM/TSKLPSu3rlIkTaKi9p0/ylibSnzqJYxbiF3COUQ+219N9ivqXAuc39/SX+F
	 WT5YJ3f5Lj+mTT/tIzSiFmiNDZwV238FnK8q6sBDV1RrniH/pNQPaKkyeBv9ndaLCC
	 tuXzD7EcbPeMR+yYEOOYTwPelKreCA7Qq4wFUF/d4OnUlxxvmek/x7fl7eQ7Bm2BiL
	 6b+Izf+BmQtgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1764C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442451384.1154.18366969868541981772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9886b53ac03de5045a037ef094e031eb01b9a1a0ece48d8d6342632f2828f806
Date: Sun, 19 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784424513
