Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA08363
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8C5C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669681254;
	bh=ZoBocA2hspMTITqWwdHhLlI6EZd0L5FkQuWwqAycdDc=;
	h=To:Subject:From:Date:From;
	b=pdmdRu0xpS/KRiMLRpGv4pMZGMLblAFBqtVAkFKgtljhfG0GcIgva4T3rxI42vnvD
	 D4r9i0S3L6yTBliYUVoXbY7BEj5mbhn3JCOvceXUCWUWoXDDsueqbTr3e5XlUWBYN2
	 OLA3ryg+W+ufrEZC6j+6FShviCW+Cl9EgPYvrIs1gHAmEMlFsDBmL/x50GCX6vwPMV
	 d+Bi0PWQtYx/YF00fqUMjBaEnCiqEWKq4ShuDXnRBhMkElrGfDz5k3/jC12/DTumr1
	 8bfDnQ3BjrQmR0tz3SAXMGPdldyEieecLOEMx+YqtWEp/myoVpeNHg8flDNA76VcKC
	 K8vTKedmPePtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56ABDC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968125434.12287.18117681684267312178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c66a9f4cf2e55a721f39ce50dae4a633d87f4cfe08890625bc92828304f440a
Date: Tue, 29 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669681254
