Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6080E7EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 02:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE62FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 02:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689387668;
	bh=xegW76V3plLEFU5II1u/jIJb6lK7Mqg2rNVchtHjQuY=;
	h=To:Subject:From:Date:From;
	b=dO/2VxLUuS2fU+8o4BVJ1om15j1j4TSKD3/vVdCz6EBg+4nNJZboWzUn1t1FoSC9G
	 MHwQMM+bDz4iG468XhrMvSLTTVzrJH2jvqSiYrx+KBm9bAN65d3Ppkqqtpad94xiP5
	 PWWdTXnCGr8y0DliyTEP0q7lCOkIh2kDjL1+/ifHGTqwZIEc0SJncogP8WuF0xUUE4
	 ZkzSDc2YtCex106J3kYKEb2Y5tFRER+D6GfL7UaUL+p/OLLcWL4iKmZUO5xdMRS+tv
	 9AR+VWfX3DbdcQ2F/F6LgsIHsTRGq2upur+ed3jL1zlvvBiVL8K5hBQqCi+wGOIAVc
	 kApko3Ck6I8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD975EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 02:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168938766867.21573.9360039778831785050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf21414b268cd478a5d3f9cd28f885ebb92368c9e0070091e1d461d5961462ff
Date: Sat, 15 Jul 2023 02:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689387668
