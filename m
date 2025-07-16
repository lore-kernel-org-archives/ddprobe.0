Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ADF26E16E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752677994; cv=none; b=PmZFl2P9CTVpkVvkeZ9qgjl6ntRAUCfGGzjz9L3Kr2+Fq5Iwq0UlbkOppN1KpcByebC7CvSFVa++Wy/CWTHuQH6vsrCnwp1i53+9v0LtTKGtjw9Ck7szEuMCtcHm6IT4DBoezAIv5nF4QUIfhV+dcNMNS+f5icnQmxHOwKau19I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752677994; c=relaxed/simple;
	bh=1r4hXUgsQo1anqjmFnG+uDOnL2QBo6sztOl34Ypd+tM=;
	h=To:Subject:From:Message-Id:Date; b=GTr7gVoXhtwYD0dZXPIfredVk2S3p6+KqN4WY0dmFjSgDJHb3yQrliyxbNSAVOZSNZyd7mPcXpunYRO07UfrcsnMtKN3+UJkfCNp0KTp85M6SAMtg8Yzsdp9A74UBMPpKZcAJ8+bZ/hhvYS6pJ1PmEIRByNxnrU2CFCB/3g6Vos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESaqsAQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESaqsAQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A755FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752677993;
	bh=1r4hXUgsQo1anqjmFnG+uDOnL2QBo6sztOl34Ypd+tM=;
	h=To:Subject:From:Date:From;
	b=ESaqsAQo/ofOp2nWrhajXm94NvBktH2LzQfePrjhMIbXkxxbwprpvhQMnQbHxVVv+
	 q40BBq/5ZOoSlXjum85uYR5Rnco9+iGcXwLmJuC08huzgbwYq96SVS0Wh1UWAk0h/v
	 oc/dmZRk6VVYS+eYPSBK3YtLJ80vIpHKT8x+cQzQ/3FtRCfF1brcCPBv/l/vqVUDxh
	 kkXmqbUUaSUhyD+G4mkPgmOTRDA7U8dJ+5mTcvuEShYy67QBOex0qswBUcc+YgqblW
	 zNx0wzRAB0EVERe6YULktNiaMwPQe/niZV7TASt8vAtUqd8ARtfQvslMFgNNWfdUD5
	 8/9wGzHtWAihQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A7C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267799358.707.10739606552949530871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19f5bf4396a62d2a31fa49e529115190469e9ead5db8a7e2530b8422de53765
Date: Wed, 16 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752677993
