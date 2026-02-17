Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393A71339B1
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771362294; cv=none; b=TyzaXf2lnl0WLAbjxmbF9UuM6OBFmNEFfJNGZcM2DRfancamt+ndG/SmYGtqbNTgqurRgdr7BilUumjWTMemkRBxwJrgFOJNltXK6XzCmKUVsp3WqZkfOB5hwb+PaieqNtBbbpjB6+GapHvirw2MBYMq/+YbPW+55XMO2fESqXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771362294; c=relaxed/simple;
	bh=tlCaRro745ukSjYBsTkzIvhc6n5X4ItKXR3KyMqeOWs=;
	h=To:Subject:From:Message-Id:Date; b=NdjuEyI4V7imA2HQ6mb1s+eztv+vSqmL2U0L2AlEE1S9bEyhC5Rt0QW2kSZ8/x2kl4j1snEtefnksY+esqeKgeyTdCWMdcyX7OQAcSxiykROouxcSMJKcidTCteHuoYbLOxMfGkJugIYKnX3WwjOLv2SLSE6NfT4xCn76iH1Qzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqI/5Wsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqI/5Wsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5076C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771362293;
	bh=tlCaRro745ukSjYBsTkzIvhc6n5X4ItKXR3KyMqeOWs=;
	h=To:Subject:From:Date:From;
	b=dqI/5WsvNGjgJVGzxOXBafOilkujcJjjDB5s5V3/cUDZtOpFQ6v0ZVK30uc8Ei6Wg
	 KpbTo/DFdrClnluDvM7UxcM8aYAXDqslTX7LoJIgT92Ov86DVJVh/qm8D6FRwRgyVx
	 tRYl4PGRv7Q0kvx/XVDzR84mmwnv1+6OGGDPZ0T9/VKCDHPitoqwPVg1WaHLBQq3au
	 jKjmzzu/nlaSOL78EFXhD8ckI9c8ILHVF25HIY07HF+am1cO4QbdJ+aU4DUs/6yAKl
	 pUKKUYSolFMlT5EVL0V9mLXZjhNhW7EfY+ihDEbcCUOgB1/9OOilp8826v8VhdZath
	 5j9J9Z0wjyShw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F62E9A03E
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136229367.18509.4636242575526239165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b37a1f163d109fe90daf3114989fe90b51d3b62835f1464eaa16d30b220eeb
Date: Tue, 17 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771362293
