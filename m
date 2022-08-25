Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17511FCF
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE9EC433D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661420452;
	bh=QZplHsKU3+5AIbulv54V0/Q1jwV6XU1oxPqUmFMV3FI=;
	h=To:Subject:From:Date:From;
	b=DVocLNK2+QA9/XszT/4Nrw9ATOqh5p4G8yUkmTrCnwJXTnq18F1doa5qf8hUg3ZO/
	 41N+OvjpPNrmvldDfWEW9g15qtRf3xJBJXKhBYW21w2nJaURbf9kv2KpEgqYTK2VML
	 iNCTjVPetICxRxiLipRbLPomOzPlL6zm6hbjTiqGJvsOA43E3+KbU2ZgMlRYxgn9oV
	 M7Gp8MxCaqnbm1tdtANGykGAwpod3hokbfCFHu9fjA/2SyODA3NF7c2cYD6eFbzEbX
	 ydysxPo8VkW4l2YZ9ayKrRWNuKPSuzylkSjaH4TNlJQLeWcBt26fZG446BXl939vYe
	 Rb2tpfFX6Q6XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FD4C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142045239.17747.9016482121111975594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55a13730eb410c58da13afc1740fe8b2b1722779d763aefb36a4221861643ad
Date: Thu, 25 Aug 2022 09:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661420452
