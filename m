Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685FE7F4
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 02:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C7DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 02:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691635388;
	bh=KLWktrggWdgACtwA2f+4jcyhNUwEitDdWRz4IKwW+2w=;
	h=To:Subject:From:Date:From;
	b=dzypsrtKdWzlEfn10qdJe5pmyte5fc7z7/wnVsWys+M41SOshDiN+TkAx3Ma/xT/Z
	 maaYXFjWEipWJ46/oOD7Vk47/f2slPcDSeJnpNjdpdvITYB0MHJ47HdNsxo3iwN0zn
	 IlNXglrrS7/dTTLoND52RSTMdxHbCb9kEFHA7Gcy1XeTm/y3oAiX7wJCAqUoss+t3D
	 ZYh5KgBZ6HwJyI9+nP4duAQjKZRA32InuuDeWUDNubWGEiO/JXBJAfgaPUFdeGtCzv
	 QeASNWO9NtnGabtNx7x/jz47lnpIGXDLC5taJayFB5Xvc3MfidCIzVtdrFV70JKDvz
	 4ePzod3Yp1U6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8171C0015E
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 02:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169163538877.31076.18147704960556771258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a932bef85b4944e91c8337fa0191e02885dab28531e172f3401369c0110934
Date: Thu, 10 Aug 2023 02:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691635388
