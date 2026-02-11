Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288F134FF47
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770834894; cv=none; b=RDV1I2sNEXZXCmm9Adj1jv+tVT5dijSwKaRC4mOAwm3g9o9ceeEWfamOH0pdhvioktpH31Ef5nhrcfuCVRtT8CROS4u0XpnY45k9U7ApRjeO8DvLzkkCe9lkDSWD70sAHTojAPa1Z4xZ2L+6t/5EvRfjGdW5nJRCCXZIbPMs9E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770834894; c=relaxed/simple;
	bh=WFP7BLCYUZWuYPvrA7ebGNCZRx2CIazyPmwecNLrGt0=;
	h=To:Subject:From:Message-Id:Date; b=ZnNW6FWkwO5RaYrZaX4H/sa7BW5aL0qH5tPRCqhgPa+HslyvNnQ9/3DGtnOmlufYOUsYpgzI4V0IB6nsVBo4tetBiuE42Lomk2cErvmq8ywQr6OvN1HhA1CRgPcawn0gPuqWJ77CBrIiaBWUeN1IVjUBPzPYra8hae9Q/s+ZJZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRbVz2Rj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRbVz2Rj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5323C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770834893;
	bh=WFP7BLCYUZWuYPvrA7ebGNCZRx2CIazyPmwecNLrGt0=;
	h=To:Subject:From:Date:From;
	b=NRbVz2RjJpRCL62lNs4jtxBBeRyui64sXyMHwrLOPi4jFauEY+Bqgfe8thmQ80X/L
	 28lb1YBkjnezSMu+UWMyYM1b9EZJQlhCKapSJZzuTyrXR8OmoHNhrTnfeAQTzhhzhs
	 59FlJomuAvXg3UmoKroqWjT3UZw5Rt/Fxi6Si7FC5kw9MGJZagYf7p5DuQYU6gfua5
	 QWj2/7T5d2dZ7r5napayhjprQI329TqL3ofdKx1GvJ/2RCIehDSbkJXMMpv5CrE16S
	 614tUvgy7nH23HZZZK/EsAuohu0GpPkhOp3ZCEkJqIX/68TRxdoKVCAzjThclfXuw4
	 hoYeGLukY+lMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFCAECD6D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083489361.13716.10086241528416819139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9b9962ce55ca6e5ea2c21bfa04fc4e12918b3a1e334e76e8b1e56bacdf0c72
Date: Wed, 11 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770834893
