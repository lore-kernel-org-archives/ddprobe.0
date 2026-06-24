Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711ED30C619
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782276994; cv=none; b=sGWUove8vC2f+fVRmbFEJ9RtxQjt739k2FabxZlgBSBR6A/jBoevPkaq95Bd31q4LWolgE8RzVV70satWV/d3o6AFcZLEbdUETGUQN/suJdedz5gGHBcFPBjIilbEDdSHIx3a8ThtHPfpmDsHLQSds9ShoGLssPY6NP2sx6jRI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782276994; c=relaxed/simple;
	bh=jR3MJyNm3qEhlB5wZ+RpGpXqCIHkyFrr4ffb57lz5lA=;
	h=To:Subject:From:Message-Id:Date; b=ObF2xPfqqkaCO6NjjDiGmqeaqZR6vKIY3nKM1uLciYZJbG2PgX0O8r8FkCLGjRdDzanoNyRowxIKhWYi2rWPpb5d9E0MqcT5qGvL5Tyakq6qsbsoo23sfKm6lsD6rTX1Aucq1kZbCseBKADyePfFWFg/ej5L/7D50lvV9cJddrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cw4vUbBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cw4vUbBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10A4FC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782276994;
	bh=jR3MJyNm3qEhlB5wZ+RpGpXqCIHkyFrr4ffb57lz5lA=;
	h=To:Subject:From:Date:From;
	b=cw4vUbBUB1D3v/KsMCYjOgnFBMv3C+qOiUhSOUaqF8Uo1W1P6wG3pEQEcHQeyBPPw
	 YymL9FCWFg0s+DhxWkDCmXHNsvlqJvrFFNdTbMpKApDs1DgNyeWF9Jm2LyLH8d4yCj
	 IP9j2fYsReb4sVwzwAgJJtXtX28ze/Rv41W4zrDGt1/1M7He7S8DAYE4X9z3mhZxKr
	 nymKb+5PN529BKbJ2UyC7yNwTXlu5Ea5I0MsgbN12pz43nq50w8cgb1oQVVx/Vw10G
	 wcFhzgolvmVvgHekKUCE+uJs/1daju4ONqb4s3Wsc1wwDe0uVfptRG23Ne/ffyMOXn
	 ETH0eE835KyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6B77CDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 04:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227699381.31915.18376511444353202219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62d0d479e07ddc7c006ceb32cd5287ce7bf79e313963292bf25c1ed0b759089
Date: Wed, 24 Jun 2026 04:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782276993
