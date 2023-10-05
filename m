Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8939D12B9F
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 13:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcmGLkFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3493C4AF73
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 13:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696512969;
	bh=+Pm9FRQmze2xHstlQc4m/I+MLnxy7enYz+R1r0GwDV4=;
	h=To:Subject:From:Date:From;
	b=JcmGLkFV/Njl1A/ptGqYCmswwMAxhT4J3kiFytagM49h6SSQH0OWi5QWqSK2IesnY
	 rRQzkwxOFlQY6NTHPO8nEGTuXfxtIo/Ttvq21v+uEyJSRKx6MDrYeJAxGlly0Sijff
	 CjqauvLqgixsYYJK5RUtjVw0UWDpijGoZDN/unK/RrRfoTLknshO2pieTHpOK7supv
	 iEiFORqMizDFpO6PVadtwQGpd5MYJ47luZ03qHzzHcwJkOKPr043Gm6JrrlI8JAOPm
	 K3Ia4JEVSdrETjgp68kGOUTFsx43BhAXTI6cd5c9vKZRaNqr0hY+duFfe97igLU5en
	 oMAMVTF4axH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C704EE9370C
	for <ddprobe@lists.linux.dev>; Thu,  5 Oct 2023 13:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169651296876.5682.10344183918894871542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eae508635b195b480a74b350b2a42aecf98edda65bb582fc635854f7edb7b07
Date: Thu, 05 Oct 2023 13:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696512968
