Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F1813D278
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718923823; cv=none; b=PDFNFKr4DDiwB+B3Jkt3nwjA4Urae9JDMKPjoRO5/dxMvNbxkVCcYRNNzQFX4ImVwxBYmK24k/+shO3JUT09YWXuJdqSSj46DqTAvv55hLTjygKH4W2hPnmnoeOIcyZ20RzURFhCH6paSL6cJfpi565YMglS4C52krw1HQNJq/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718923823; c=relaxed/simple;
	bh=685CbHYmAT7qBvEymQvEHSKz7tdiqZfWVVCn2qqrTho=;
	h=To:Subject:From:Message-Id:Date; b=WMfgOs+H6q8CHkWyQNW7eFN1/KJyakTrQl50B2AtjTJa4ZWKQWZ+l/FPlR62AKkxdPb1jJw2BTQZ6flTdweHApX25/nFIj5Xl4zkhWqwAzJqvdGNgC7zQtOEwZtvko1PKVZC9LS1uHvcAbXw7YOoz9aBtKL2CJ4mtsIBrs2j21o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jb9KSGAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jb9KSGAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3AFFC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718923822;
	bh=685CbHYmAT7qBvEymQvEHSKz7tdiqZfWVVCn2qqrTho=;
	h=To:Subject:From:Date:From;
	b=Jb9KSGAN93Tz6BVRkQXl5NnU+A6qNwVtO0v+ZcT3okRanqUqub1C4+Y/1vcya+q/p
	 hGRvP7sLU8NPOJoBWDTDWxnVq2022wJaurrSRy3JMQ8WrPGTnQDfzv0BiCEU4K5vDk
	 U8DCMF89vAZWS3qbd0Wi8em3UtdMWbFz+rBNJPJlVy4qYeylYJ/Zo156N7E/jzBwTR
	 n0oXrJLaV3QEPRY4PUoZGq3M3Djnj/yP2v88NaIkbi5++EkEU4ovSWiBtgaDh8B8AX
	 rATifr37TXRIJUuTjzIYus/f80NXgZD/51G6TlW1GgXUY46+IS7ExGl7/pbbuhF3LM
	 eN+c0/HwOwU/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67E7C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 22:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892382278.18364.13874396039494708780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c4f06f707b5537ce394d9ec9fa6998fb0c278571b275b261db80082baaa889
Date: Thu, 20 Jun 2024 22:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718923822
