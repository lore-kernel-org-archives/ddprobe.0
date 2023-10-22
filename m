Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D9EA2C
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkMbE0R2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83033C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697944696;
	bh=arXd1jbZz13d8Bx8KTBsFQmEVTWg6l8oN0aJ7F5faAM=;
	h=To:Subject:From:Date:From;
	b=kkMbE0R2op8Rp40j4FpFSMPulqmfHW/GfymZaLfIIt4jskjKpBrs00/0UMeUt7K3b
	 WjN0sNaJe+1vqpR67kKlCHWqyWyklITwN02enl0Moz5SHo8+2rpdXAtzR4x9o4zsQN
	 Xgcj5V3CXOSgRxNUsddq21lJCbd7kbtRoYVLrgEIeyxijQ68+Qx6XLIQTSco53pGL6
	 3CeRsDqDJcdjOhiwFO9O9xQ//hBO7mrNFsUuQ0p9PlxhBWAc46OHH7CreOSeCWaB9E
	 CW/7TgWEOlLlLCdvqKpXNoG03YYGTWWKGyWvN1iQTBR01QnTXPTnn/fyAAsGR+unhd
	 dvctINbQBGELg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63945C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169794469639.21760.9459557759814585925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a82f9bff66c49b0c41f36300c802063e28f9d3f08f31cb6acb82caff0785a91
Date: Sun, 22 Oct 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697944696
