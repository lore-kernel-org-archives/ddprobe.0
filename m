Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14FF53B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72FE9C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664479853;
	bh=NXdeazC3/BxG+VKuDC8uTLjFXQ6h0mEOWQnrI3ad23Q=;
	h=To:Subject:From:Date:From;
	b=AjaOetNggOLPXDEDefrpvlaQIvotl1cP7biAwxf9eFuI6bZ8MtiOk4d/c2gFxJIXo
	 FQRW2DDaiRJtpHWMLns80jVcTlL4xkVa4J121TbjcsoVazfMN/MD5sY99HrH6G/jos
	 hZ2aNrBE20uLe0obdFQlVp5h6y04pa2Yxct8dQGQAaiZ1UQ34x+1aGuQH2Z9IkAsxT
	 GbGsEJNC5DeigbBjn/COYqjV2j8gIgBCbK4R2EQg6F6d/Q2wVNAP34IJ4xem1Y3C+f
	 L58XWZueILw1OlAkInR9w+T66VCwfw27VjOxifvordRSc9mufFsqpDCg49rkkuauS2
	 3w8w3NdJVLuLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A259C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166447985335.28043.14536446895559832949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71515d54afd20dda20fdd5b4690f5bba7a2327bddb218689d29b4127045d03da
Date: Thu, 29 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664479853
