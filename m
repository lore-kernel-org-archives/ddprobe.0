Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548AB16D9C2
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715107943; cv=none; b=M9FieBX2XvYlva0s3BsQhdVcrf+RCUlMIDBohAVuEZ/+pzVeYMRWxWfgz74W25EN2osVI//XDrFCCpssLpMZ0JXmQ7eA/bTwBnVnn49HC2r1Y8JqbODt6UcvzV5wzmZfiJ0+ox2b+2duZ7yUfo1RCKmUan9cYz8Cx5eNIaoNfGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715107943; c=relaxed/simple;
	bh=3ben8MGEJ+KwS6/2SqGcnITe124Xbczc/f6KkpSqj6w=;
	h=To:Subject:From:Message-Id:Date; b=aJ99tV97KaQ00GCZIadi18my0vqow7q8LDToBn1lYFhlWHcA/xK1f3SOVuWANg14kjEx5C6KtBol505J9mreigcWXffCem1WXT9M6froD7M3Zq+3w4G/CyzDuCF8bTjYTipPnwmHxVQ01RAsK5tDncLGrL/GQ5dUdy7nfUEmDqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYwMBL+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYwMBL+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C12C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715107942;
	bh=3ben8MGEJ+KwS6/2SqGcnITe124Xbczc/f6KkpSqj6w=;
	h=To:Subject:From:Date:From;
	b=oYwMBL+5Xc0nJXAcNSfzS0HYFYlTBe5FH2pg39RxlgMvvMLtfjgto0mUQwJIFYZch
	 l4aVIGGmFXCZD/4B0jltCGIjsubd+yIr5oWLbVT3Wc+k2tpi9qI+8t4TdaQUIkImHe
	 XrqnX6dWsxvXiF6omaR9m/FcEekIxeBGdNhJespRMwPfT4vJbtlHVGKRY3PWMsXamO
	 toQaZOw3NghwCr1oiHzfdLMcdjIg057QcjkZr7ELfINEH7rJSEmlBH2I43ST5SA+RA
	 tjUhYkdnbR32uw2AcgGp2wsz9OK+xrOFVgYrA9dyy9pUNuPHkqLBEwqIHRxNE8Hvro
	 0YjcWOqoRB+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33FEC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171510794279.4911.13754371215708059067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d445f87ca963acadb41a5fa423cb2d4631e051681452083ffdfadbacf24291e3
Date: Tue, 07 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715107942
