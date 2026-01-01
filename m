Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C212264C9
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767273834; cv=none; b=LwLm51J+QDCB9Zv8UsrSys2fix1HJOpkNL6Zyj1ApYumfO4whZ7x/1ofIYiWW8+yukBnxgtP7Wgjgvuie735/VhwTGSRKLze6zbbVG6UbbtOheBIPHlJvATI94iryoOTSYyKYQT2/IJ7LLVYArmLb2Mel8tH79g0brB8Gu0/j+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767273834; c=relaxed/simple;
	bh=wMbJbjZWv2Mc49kCAjRY9p3rlxPzmk3bsBIbvsja3a0=;
	h=To:Subject:From:Message-Id:Date; b=aXzeGCclmcAR3s5iAIi+DRaJZMgDurdLFi4ybUonjYjVIXc5ZrHKR8K1h4/Zaof8fIB2ghZX72zGt7N3j7O+y8fSw8j2Xy1ATvR4A3tvechMCC9H23YlrIuwvf2LSWEEwZjYfukyjMXu1N6IwAVh8Gy8BWDK7PL1eLGTVc+b2NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWlnBVVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWlnBVVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EF5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767273833;
	bh=wMbJbjZWv2Mc49kCAjRY9p3rlxPzmk3bsBIbvsja3a0=;
	h=To:Subject:From:Date:From;
	b=gWlnBVVNXDEoNf07udtj+uDCs+bjC0kVge2Lt0HFreOvdoMZ+zlLHld7zh+fGwZA8
	 dgdaD4nznNsqmEYRgfdmJFAmm6kJy9ZWHVlnTAZg/GYIf26eGCBxRfPX8r1Tcv6Z3r
	 bGmtfLqiN/KwGJ6wnDjtCyRpnsFs4g+oYu7iE446HZmfJpuSMpsyHptim0Pg+D0qCg
	 VJuimnpNls73QnThsAMx/TgP/jcrzQJp/4cMfHq9Dx6gh57B9M5uQ+Mr75XhHZqy12
	 5cDsZ1F8gstwckYP+6V8gzZ0Q6+xd1/uJfbafPupRWNj3IvI6JB+JxV1yGdO0Jjtsu
	 Z+5lWobv8KroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9513DEEB599
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727383357.16411.10934927570415626491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7f32525feecda5598d6c18011fd0171c6a82c8692c396efe00235b48896f9c
Date: Thu, 01 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767273833
