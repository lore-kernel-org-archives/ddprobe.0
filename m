Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93B033985
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748557793; cv=none; b=sHwwrHvt9Tl2L7iOjh0olLtAf/1FRHb0hUi70A9NNUAGI//XJ6yQjGCZrZfFicY2M8yJlOTTApWBIiv65JWGxAjOFTZZZEFsT8Q/X0NLXtWZf0IZhZVyH9G7H2hcBMpf+bU/0srLnW7eHiuN9vaCd4AeV6tub+QYXuXi5UqKexE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748557793; c=relaxed/simple;
	bh=Qk4cAlF+AJb53Gv4bPqcx5DxtxmpbO4nGc9c8/IpWsc=;
	h=To:Subject:From:Message-Id:Date; b=ROJkozGiB9mJyiiqVxdwuT/FpVnIE3wmoFccPR8KkBAoUcOV0aj8HqdCYEIPRSMOCjq2Hxc7YXVrw2rrRPdvFZCUiqs7//+Akm8JlFLU1YdTQUzbDUAWg8RLWUB7dls67S17ZPub0X3XhmE+b/c4jlVvF72Wa2RUrRrtvVItzSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvFzvkkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvFzvkkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9DDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748557793;
	bh=Qk4cAlF+AJb53Gv4bPqcx5DxtxmpbO4nGc9c8/IpWsc=;
	h=To:Subject:From:Date:From;
	b=cvFzvkkTRiDPDbpNvO5GEvM029sXOtDLHyzYsmDIR+I48rFWH3UAmbaVmvNYcliHI
	 m4KfEEcg5UNthonz8ExChIu/XqDP1XudGalgqR6zl1HuIh9nQQy+VLlGLvV0GJwVUV
	 MHR0NevljE3BhPcm2ok4LYQxHJCfIIqRZOqRBAilNz5cDcPhmSonG7sKo72sGWSpsJ
	 k1UZwJ813r8C3GKrf2p3PqJ2sQiKEsMziRo2OTAKtyaNq3C9N4+iSiAXHLqIActlhk
	 Q00LOjsLMigggQPGQbmSZBbOsggFseITYctWA2uM9g0invLzM93MWrSjX7pKuVgJQS
	 /nYGMBk+WcRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB81C5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855779358.17491.352355450750956066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2f314048163fa3099a21107669e3d311c183200047551ac34a32bb7a2f668a
Date: Thu, 29 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748557793
