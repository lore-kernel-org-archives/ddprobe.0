Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB99A85632
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706816296; cv=none; b=FxiHFFi+WpAmsXwqdN9V1TxNoUmJ0FpYc0zf2dtQAX88+lL1I62ZlkylKeg2ENTqCDexyn1CgDCM7C94RCm1ciaBzlNlGqBafFciPVF7wadP+Aj3dZGvBdXoEqXbSGqkgAlhcH/az6QQud2qObH28BU3cvK0N00dNEQN1RgT2L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706816296; c=relaxed/simple;
	bh=70Bw+ZM+z3xtbhDq/Jw4eXL1zXGoCOKxRByM8G+j3Do=;
	h=To:Subject:From:Message-Id:Date; b=KtX/yIR23qDW71uL+hHJ78N9CQJMv/zN0kKGpPaRnRqC+LtzETNOGRmDvjEbkKR5RdVDsW2zCRZBtr8zbkZ+hCfNIfrTZ9Gs6UGKIlWdJAEHGkDPB88/aWmK+6N2hAUjEoMjik63QDFRM/1tV6+Xv8vGKmUE032DaQ4oDbFrDss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpFMOH+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpFMOH+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829CAC433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706816296;
	bh=70Bw+ZM+z3xtbhDq/Jw4eXL1zXGoCOKxRByM8G+j3Do=;
	h=To:Subject:From:Date:From;
	b=EpFMOH+iZjiTxZANVglBWSactHMXbRMmbclxMb1Q2E4pA6Kukt0zkKp45+WFKpMvp
	 hXWdLyMdRwWZC0u08/GojjEjWGP8Hl+oMMUP36KqOmsXRjiHRMKWw7Tl9AS/A25YNv
	 VufarHc5nGyx4DdBtZronpPUkl13MBTBvg1tYn3iupJ7aqauTEM4j8DpIcDQsq9AXm
	 FpmXES/BKpfoYoS8dg5CqiofgqAFH70lAGQj6mNJbji1RP0GCTqZRby7aCgn8zCEIG
	 QFIbPznhip+zTuqPKl7eN6oP9DONKf1/0/Vi7M8K6nc2TESAe14fsDAs61+Jfh35V7
	 MNH+YNY613dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67301C48286
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170681629641.17140.10060373927367434627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caae30254833ac46ceead046fbb4e911eedb7f2b2288cda8075edf52684e943e
Date: Thu, 01 Feb 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706816296
