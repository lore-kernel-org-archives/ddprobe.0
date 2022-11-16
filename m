Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF1FC42C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72953C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668569454;
	bh=Xc89Ts1MM+pQbnBB+0VL62VZ0UtNG/6PAHyhoDZS1qo=;
	h=To:Subject:From:Date:From;
	b=VBR3Hiy565seAHdrcR7kXIf20PrMqVUGyfwQLNTmd7GiQgqxNDREMljaCJof7qcjm
	 a2bWo34hFtvHkoVRi9DODXknClxDOtcEaB8dO4M4ZQK/iM7pBFz8SLFV3T5vqMV0dy
	 LRDVcmwQ+vROxiCjRoI1bEvQqnT4h5xW2085Buszs4V7+aKVzo0vI2UrcyfLSwYXf2
	 pvOyQ07eEgxJ8OB6nIm2ZUofqfKBLMPrW0K/H36fXuzQw2j6Q1tde3FQZInXb7VS+U
	 X8sB4TmLK97NSf+W/ZfrvG8zI+5n/eU4HIj7HHj+RmHjmjPMTOBSK8f9VtxzZ8Ifp0
	 hfFiz1oZBbrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D47C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856945434.4540.15107083850211684712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2748a3320d627ba62a2cd1cc588528d934dc821d2bf55169c1d087cc2d0f494e
Date: Wed, 16 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668569454
