Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48350219A8E
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748551194; cv=none; b=uGISNrdAgz6uJeI2vA3BML4EYBHNm8hL6sdxGawMXgvQ6WXf5IGr669E87OuWSpRKmproz3z8o1wBuNw83FdAI+OuMWJmrWpTkl36WKmJKmv0iNqRUBTtl4A2hGt/Zr56AyEEo9xqA9/WWwo+RbCYVPErhqvSvnwLelweaGn/xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748551194; c=relaxed/simple;
	bh=+7J0R0eQPGFey6lxJB0HpVlVO/Y4vLMxhjbAtwEOKsQ=;
	h=To:Subject:From:Message-Id:Date; b=PPokANIWCA0eSMmWPjEtUlNGxIwCIZk74VUwqWVHOsGCdD7qntHcQ6vp3bxS2KV+UJsACk8l0srxdI95rYwCcEck54Bq3OZoSO6Bl8Zl76qKBfocbVVkIPOW/8+J5u8fabppuKqVZ68FpHKl8x+KpKF7wHOzpt0l0dGc/sgZQPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OOCYyiBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OOCYyiBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748551193;
	bh=+7J0R0eQPGFey6lxJB0HpVlVO/Y4vLMxhjbAtwEOKsQ=;
	h=To:Subject:From:Date:From;
	b=OOCYyiBHVMmElBGJmlEpJjq8LaZZS2pWQF66b4Mdc3BCWTxWLr9hAP3lbqWEdGbKb
	 N9Ma4Sa256icgqNOXJY45xR9iyjJVLUgUKzsfnCobdPStOGaWBTCnfluNOzWB0G6hE
	 K93Ow/SBAAZL6ot2tPPIThMFaWJjF+pk9T1MwdveRAeK3AT8bCWNHSc4o7HjoSenBF
	 TwypcaiLWlLkRjW12I1mNpuUIKPodkY+iVUmtCrBmeLELwcd1srFBsjPLDsA6AOPpt
	 pJK2izzzlok9ZI349BSQ8BnP1SESkRz9cPT6d1jMIQsluFl+2ZlY13qZ1ye0UyxJUX
	 b89HDTmq160SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1EDC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855119357.13439.9173746013292905440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6f1ff8d5ca1061f5d9ab44c68a4a2c0399f3ad7130243d46c390d32613bcc2
Date: Thu, 29 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748551193
