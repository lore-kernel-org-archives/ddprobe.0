Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137E730CD98
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756264794; cv=none; b=A8AmS9n88lsFho66h+Z4LVQ65zeRu0ThLMT9vUYgkncUx1r6b2NTK0JASGWvT0/0HncKGMToR5iJKJVWtd8dwGmFTHYuM4PuBZrjcAYIK1zZtQBtSr2G3Ay6wqQzToT1GJ9+owAYbCaxHq/i4TOG6+IPFsfqmu63qei394F2rGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756264794; c=relaxed/simple;
	bh=4W2PNb3nnBLIHTX4h101TqYafEDX25ftRml7Rfx901I=;
	h=To:Subject:From:Message-Id:Date; b=CIo7aCiX3Rg5S0+RbVoo3RshKtj3ZMXsMmfCxCbRgPmgJcalnMUQjPT9Bs/jRs+D0XdBYLuzEPk0yCRrKMBlIiQsOBvh68SsNEOw89JdOijkpc1AeJpopK8fzp+3s0zZK5ZXWiCpUrxSQcs1A05Ed8RpnW19wN0qltvjubrJCOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HG1DzC7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HG1DzC7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1705C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756264793;
	bh=4W2PNb3nnBLIHTX4h101TqYafEDX25ftRml7Rfx901I=;
	h=To:Subject:From:Date:From;
	b=HG1DzC7Vb7jQFisxkUlL7x/yRO0x4R6+ZknfWaOadTiZ+hdLToLSHd/m6KDghhnl+
	 pIUseqrKoCCaD4WQPfPhVPg9ywlUPjj/x5i/zAOra3YkB6YxGMtm9MwTWWdTZ5zwU/
	 n6PJD7/pVrA2sOuX9ahJKGDXsR1rC6XEfcPHKYKlnZKWxVtoiSvB2dhgZBDpq3SytT
	 X2wyCMu3S+rbvy/KJbuB5nFpS9eFCdODthIuHH6WVRHOucH5XOFtVlf5iS7U7uWcQ1
	 zWACL8OlSGxBPsKGVq6pgmMUicjU6r7GEd6aKQEgQc7CDOIlXzwVPx2n/bTBjvbT8k
	 XOLkSR6aWZ5vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA4CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626479357.6666.1014893814543956603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5957a07260c61df9731f84fa5ed5862c63729359071f0216b8d79fa1262486a5
Date: Wed, 27 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756264793
