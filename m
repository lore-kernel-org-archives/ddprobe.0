Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C915853BD
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 657CAC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666221653;
	bh=XugDLVtDAgN+xSqQOXCWHtspJ5K9WYGxK875pPekEZQ=;
	h=To:Subject:From:Date:From;
	b=tvkwOUtnBW54/72bzcr0bRnsDH9aEJy2GwdGSDhi66Ra4TcLhbmIMk4j3dy8H9B5a
	 +jVJjmjwenPnjOyLo6gt3c4Fj4PKwlQ+QR7sSQ4cMakmPF+T+sT6/gmQRPiij84ReN
	 +HCq5WsgEszK9MQQv8UL2R/IdcxjTNMGsP9G7FTg9N87bJWDKjVeZASqOGaQnRc1vH
	 C/a5oQszLHqNR2IBbueJFo3bi/EUiIG2ifOcItccZfyPd8abGTocet1NTeJzoWMbW9
	 XTWEj3rajA9ryL9Qek0zVb1C5MZh1D6qg/iewU2u+hVQVUbCvThr03U0Z4Ak5CSa5w
	 PRTH5T6Ri0bkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DE4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166622165334.1207.18025696317340764973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c429e9680fa8bd53d0a659e6d28868bc01d612e0f2eca693fed82372bad39059
Date: Wed, 19 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666221653
