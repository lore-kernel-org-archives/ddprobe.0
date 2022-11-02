Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51BC36A
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F09BC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667377854;
	bh=4+7zLeUQFc/nvUiIp/trVUi71HjbathdPZ4RIQk0jOA=;
	h=To:Subject:From:Date:From;
	b=hLvh1DB7n4AtYYD2WhBN4i4U1KkwrJr1UpkmhEHOdCjLPSQluBHDgb14gpmYAR3wh
	 /UdZYfIUw4Yi0gSIIpvKklUxasFs5L8fnk0C1d/GS6bgochNUGonwp76KiPu1nQBCp
	 c56/KU7dDwRIleQBl8CudB2P5PVwzGYNZkBg61smqb+JG6OfprC6CjSXk4M3eXyqD/
	 PjjlXSJL8pxGaj83joikrDHlm1hO/Li34TMgNbe7HP1kw7eNGsoeWECyQyBIeUHq34
	 K9s33NPc6zOgtkq04n6ZNsRA0tPcbCecwAubh14JM7qlufSoEfHahxC1rN/jUt2kUv
	 0gTQtibK/44gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B42C4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737785433.21845.13280097756463405395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242674eda153b7e390302fa99fdabc38a1968e38bbda5405747860dfa3ee7796
Date: Wed, 02 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667377854
