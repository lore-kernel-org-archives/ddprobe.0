Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673A0189B84
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786864834; cv=none; b=QP5HaybuVrqN5DDJLI6reDmIzqJFSZt/hItim6DssFTrRUN61BdtEhuaZ6J7qD/vxgPYeK/WWtQJuuvoURjgRfwUAV9W39BNe7TOMR7xHpD6+tg69RgEMZPSthsSZ1IVIAY1bkO2+aFbQWi5n58V86x7pMVp7B6/CB1BmQyny3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786864834; c=relaxed/simple;
	bh=NjLLMvjQLaNIFJ9IldGCNNB1MZ6+mM4PLLP/bIV4C5A=;
	h=To:Subject:From:Message-Id:Date; b=SRq4IeAKBkPCn+sqMecnXp5p9GTvbtqYCNR8V1kFJSGJsRik1ZsvFhFodqXopW/cRwkFvOFJzMNL2CtAI0plBtFDYlZ7H/b9OZplHudBLHgSJ2zVA+sA89VkTcyDPKkpvNQkQEggA+NDmJK8LLJrBxEqc5m9KcCCo3ohgYlTf4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2Th7Uze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2Th7Uze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9245C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786864833;
	bh=NjLLMvjQLaNIFJ9IldGCNNB1MZ6+mM4PLLP/bIV4C5A=;
	h=To:Subject:From:Date:From;
	b=f2Th7Uzedj0NYzKToZ2bd5pTuyrxbwN7CIvyChw9+Ww3wv8TBT+WkRxyfFG/26YpT
	 JYXF+PiGlQ9O6pNy+7FDdp+jfHgdV4oBgDzL1m5EZAKQPZB142PBOO/VJkK3fzPzOF
	 I2gcNMck3tYdWDFW4sMOUzddUHK27tNFz5RZHs5chrQB0pJjXFIZGQC4KhkMC7lxZn
	 zbv4Qc8Wo50DsrKE/XXUhX53fAG8XhtkY7uyviLVYd3sKjfQb8mRRIKm3hRaBnga8q
	 zGR3CSdaDJWvJJ0VldxvBwoYeespLkGiQLHV0AS+d3XoXFifiFXJYFBGHWdkoY103M
	 1Eev1sFZpUpYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA2CC5DF6A
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686483368.26522.15559517261619584609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6e6b1d484deb3aa6f23caaced1716f5d251634493941abde08cb0ba4fd8237
Date: Sun, 16 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786864833
