Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE4AEAFD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7900C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687648388;
	bh=pyIFT4KI2uaWmGVcx4nXgoEx4UmutE9jR+B8FwCpMQQ=;
	h=To:Subject:From:Date:From;
	b=oLQRaXNoXcS3wvswUt2+gTK7RC10dtCBUiRhdtQPzflPo34TDqhMpvFKhBxdKve4a
	 Bzz4LAu5IN6+kQPaeh85hBje1xWtaIXEW6O9yOrk2ROFw5DfN6PE7IEmw36ZRD8s47
	 OKHwNuDyOiwxihfZKZsUXsfbn4Fcsv4dJVPVM2aD6IDCdFmG0RK7yzE2cK/+Pc6Oy0
	 DsO0Yi5+chQ42dbiNcxgU7jRZogy3o/7/R9rCe5vSwAygN9InYVvglZUKSVnxtqwse
	 Tg30vpmD6pB/DZGeQwUnYwH8kHP2Ry7U5Wrfh649j++mhfvQj+rZ2mS+OMKQLKgtg+
	 n8pVvDynofMKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C3EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764838868.12062.1679592863654424447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955cae51ff196189186b2438ee12169e898e85d4384572da5a24983755ff895c
Date: Sat, 24 Jun 2023 23:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687648388
