Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2676D3C2F
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760245194; cv=none; b=XMrcSy+KT+kzPhcMHQAX0EccqlAvz4rwJ1eK2QYCg6GFT7uMljn2tufVIpOs0S7iiRK+GzxuvUQhvFtXjIojX7IEfnn3z9moCcbqeAI+1kocHUMECOz3WorU8Fj3aL0mJpCW8YI2M7BULCtJLG7/5/7QgZ53o+isM2r0tIOGHiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760245194; c=relaxed/simple;
	bh=Hoar5k05TjfJyDeskQ3Kv3HfjK4pCZmzXdb8ntdAHJM=;
	h=To:Subject:From:Message-Id:Date; b=uyajweJvKnOAIQhEMyHNJ0l4pF/FzHCpreUHqzbUAoJHl35+mPUwswc+/FLxbNql0MPcKmXQBB6DCL8GYR0jcxIInn9EjB6Givz4Y7yebf9sRT/A3CwdhtzI1BsuCeo+f2V/u8wS+OTdcH0tNG9/gMIulgkOY3stH82GYjY4g1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrePSIfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrePSIfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6437C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760245193;
	bh=Hoar5k05TjfJyDeskQ3Kv3HfjK4pCZmzXdb8ntdAHJM=;
	h=To:Subject:From:Date:From;
	b=RrePSIfmrhd6jDkJQPtF9m7F3dV18WgD5YMGxvambMBXm1lPDEjSPU/6aR7oQSzp5
	 KLl4+GD6FeQ4WbrZMqEIq4BrxsaeurbEb/oK6sQamRmMtMI+XlGbGklrDHkOn58VhO
	 Zw9+ttU8fxwqxrYhy4S+BG12MADIUEUgcLpExq2Z3VCsheZR4ZmCW5QUZGtcQ1wu5R
	 3dZWquNuQWCmpvrNNmlDj4y+SmKLMZbI6ZvxGe1OJ2MZcFP/M9K14LiT5iw1ozwhys
	 EEDuMCdXKkJamf8ahVJxplecPmMCiPT6Dr4jP750X1G+2TsJVvScnBMQnslydalF+T
	 8dKqVAXy/ZLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EACCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024519357.20869.14458458096997862266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0e3613b9d4d826173512bbc4f315285c204bdda73ecf626f3b74d987720bad
Date: Sun, 12 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760245193
