Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1633F7F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0339C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672792887;
	bh=d6Qq7Mt8Qsj7SxQ9gzXlwA+b+bVCDFC8V672vIXnOcA=;
	h=To:Subject:From:Date:From;
	b=tPrsTtQjQUWNPxGWoGMzjBQOvMj6vixHSDqna3qFTCNZaRcfcmGkBeA0mirbaHTDB
	 ydy78k95QTobssFlLPQjalZUV0hbjb6YYZuQqy58n/k5qT/R5uVRE7v9c6pp15w6Xy
	 On0bL9g4uuxOUqzJzC0guf7IHwTEzubP2U5CaiBhNE/ZiIxzDsBQtKFO/qGaNGK8Ea
	 3c1RUHrlFOe5X3VDPXrz/SdJn1YNKTV3wf4QHAorz6uyUMJCBqLt3NHJ+RAxfoRVpy
	 7//4RomSHq5PdOJjUk5DVa5NV3Yrh/H8UnCCeKTba38VaTnURXnzXBb5iN/Mfqhuty
	 HVURF+CikzNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B7A1C4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279288755.19540.15545742212834012415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c81bbceea79544817be9de631f78ba82db31aa9fed717ebd635e98b2d6563bd
Date: Wed, 04 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672792887
