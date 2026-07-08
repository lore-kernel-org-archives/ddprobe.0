Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C13E3939B3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783542514; cv=none; b=XAN62DvhbcLLUlLuuA4MohqAHzRR3jSG60gceNf8uvVD6i4Pgwsk5WmWLBwQYUuOVc3vYgQeIHT6XTvLYC6y3KEn1UX2qTeva06NCHbVsZNlwuDG2CUy9Oex2v7GIbQU2ejxU/1msiLEQJdh2/fGLZMUXawMgrYF4ybSWUHDw14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783542514; c=relaxed/simple;
	bh=dTWzB2iKj4O3NVqdMu1VFAlpqMksqbB7fOcvXQjKVvs=;
	h=To:Subject:From:Message-Id:Date; b=MP+u4WjIr4KLazyjzdug0Ckbf4y7rv3/zpELQ1IobIm1gJf6Vq/y4K085HEdfcihp3txJfu8k5drNetGnIyj5FktG3vN1AFGkz1AEM4MWj8IUXNoaP+ZVgwH9/EGsFNG2TOB686SspbfGZ9H8waY3Y5iS2ES+TGvksttTpMWeKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bk+U6lRF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bk+U6lRF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3E4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783542513;
	bh=dTWzB2iKj4O3NVqdMu1VFAlpqMksqbB7fOcvXQjKVvs=;
	h=To:Subject:From:Date:From;
	b=bk+U6lRFTM1Fjq9/tiuWR9yn+Uf9xL6XEvdC90nv9P7AEns0A0taqDbsQqGGzkzwr
	 uXqz3J+Kk8JoliIqF6mbrQL4OM9UyGTKMrkrLb3JeXNEFktcEOxDmCH08w6/HeyNlK
	 zywdMWxyepnyGVO+MR/XRGQDiRdF/q3xF2fvNswYrJw0mhaRXOTpqS+goLW2y2jpJX
	 sgihiSiNUhcyu3YShWPjRCcrrjhDDf6caGnRwzsaGq5FUHd9Bnw1cta5lFbyoVZ+GY
	 jQ1g0y0d22jqAmeBts5hhLHzGxJ6ElS1zoH4u2Q/HmyuvazPdy0euUz9e+nE5YI7ze
	 /jMTE76Z5T1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB446C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354251368.6884.6659242338579916233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50445908f5309016ff2f560f01b896fc8ff8876c9a52066123cd6b48108d0b83
Date: Wed, 08 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783542513
