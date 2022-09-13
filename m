Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB351867
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66879C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663065653;
	bh=8fnntrubnZicodD5fTRNMY3xopfnnQ56H75GL15n85Y=;
	h=To:Subject:From:Date:From;
	b=hIzO5Z0XTt4reBqI6IkPH0V4yCLIr88mN60UgxLGPbl1sVX6o0V7EVacQDWKP2muH
	 bk6M7zdOR/3fIlshEWTaSdVsjuooW9ltcUk1BWC8Ik8TozYC+eNPLDsHp62VN7o2oD
	 mgsXuOKqDy5gO7fVV9lZKkB0O9Yi9P7GLqbHie2kQ3+cFbus8XlSazI4at3obvM65k
	 o/VaWuA8D85uqG1ML3giInMBPirD5cRhbAM6mh0h5bn580niR74tBpbACJ+/8Yrvfc
	 kwrLQdLMG4kbbvUEDBexgSwpGJ7QTqSlYKutZWsh+68fy7orsYrNkMLhEaYAZYdoBv
	 STzg/hqPalN+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DA51C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306565331.9850.15263830502876847538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4416d4d12b514beb7a0e5821045fc0b14d00e02dcc5bb3078ee3a7e3c3e779f1
Date: Tue, 13 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663065653
