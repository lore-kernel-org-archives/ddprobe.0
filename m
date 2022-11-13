Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F113BEA8
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FB1CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668312054;
	bh=mpxVhrMBUNzrVBevDIgokyjbQpuwUSlN98M07FzMK+8=;
	h=To:Subject:From:Date:From;
	b=Di1YO8mgvbPW2nPsTKIXb0MafiGTjVP23hl21/C05GyXuWFhKSGQkXf8x8bFOHTYr
	 z48KZeJGK009valbKSH3zrO8gHahLRz/mXKerrJE30Y2NdAkpagDDvQEvJrqKaRgn9
	 ZBu/7x5CmZeBu0DexkO/+yqCvRsB4y+IJ9wZvmgJ0pUHGbzUdh00DwGBSVRlSQZ1+w
	 uQwOtcbWVXY+6tciorZGw5a3fb1VdyF7K1WMgw0SVJ/uLmq8i3R1Dnixk9K1wV/tBF
	 Y7JJBe06HTVXNjHzoOacpnpRIxZncmosT1p/MK5jLaLRO0Wd3piG/kXipLnNDFz3vI
	 e2ZDxGcG8uP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66169C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166831205440.25169.6000677034770881580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b791d84c66b036c4b4603dbb5fdd4b930ef69768b8d5ea4e6f68159c241a67d8
Date: Sun, 13 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668312054
