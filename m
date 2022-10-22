Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D5A7C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBD4C43149
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666425053;
	bh=ITOg4s/LZq0IUYZ6kfoCErsu0KtRv0hhhpP2ZIVdJJw=;
	h=To:Subject:From:Date:From;
	b=fKeCdfm9rHd9Nxrpvd0nSnHTLXOKQjGB1TMLwy70a9hBLVf9biXsekSWdAiC1KGnB
	 JWnmtQyM+7P7x0oWTwAvSEsFSUjlpfxdeXt/rah8WSMgpI2m2oYzuTaQE30GGj+P8M
	 qtW5yYIlp3Qf8DmUNMlCTQmgWK8E+iPwYHYHsKZaiPG4HHAfEfugSUJ7+vVWJZJEjb
	 xrWgmWu2l+fDmJ6H7I7aKhTT2GmLy0ifdwaTXRTCMnOl44WuZUeL0TYUZNu0udJcVH
	 MNOYQOGT61s5pPTALHT7yFMhi4xB42InUV3oQQZ8OSFwzEIzI8QEVGar/VotTngG0c
	 dGACJZGPIkhUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53340C3A59D
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642505333.24200.1240795516030463653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337c3fcadfa4725222a4c4b37d017c14110f9584e6c2a023d624f4d9d9090f2b
Date: Sat, 22 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666425053
