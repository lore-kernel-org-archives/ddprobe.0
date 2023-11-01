Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEAB4A32
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQyVj7zn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 868D2C433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698818296;
	bh=xAH6KE8TpOuM/Z5gM54huH5eRYd41f6BJpu5ySmmzmw=;
	h=To:Subject:From:Date:From;
	b=sQyVj7znDbP7SxzDI/E2r9dYXnN2IDRUR3j4/k0vxiZpx0HcdeZH/mOUp5Qc9GbHD
	 FcSGNsk4HJ0lCCHY/lhTvOF/SxvN21VXvqS3qRr2I13B3gwrFMbFQv51QvPv61qa27
	 SRXdraH1Mb1/dicD2ftcot3bZ6KHpCm6rsz4JN7waEJ591TwTDwHuMGwStT79PZqkh
	 GilAukDuUSj9ML/93mEAdmpsUmDT28cytVUVq0aHp2eT4kSDnh7+NNgd5Y6agn46Sq
	 Mb+7lwpVUw0xk32A1UjhhC5libAbLXOSYgkxe2ANSz82MQTPNwPGoCtdT1g0QuuVMj
	 ovKBRi75O5G/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A4DCC4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169881829640.12946.10933387703487652133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be78e58722c1330e97703eee19d76f76a7cbfaf8932890012b224be94530eedc
Date: Wed, 01 Nov 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698818296
