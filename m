Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33328160
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 22:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7157C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 22:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675896665;
	bh=75eBy4Vo6mQKtCf6bUDlRo5DvAV1G82aJDSfl9/GR/s=;
	h=To:Subject:From:Date:From;
	b=TbX1tqVU9WWO3n96SQRVinrJpx1qjrTpXEkB3haP5uOSLddtx98wiRO3yoRr7i/46
	 WdjSsaMs5e7Nyvbp8f63YmwACv6bmVYx4yLN66Fbm+h4rVpiukjFxUoZ5M1xOupSxW
	 EObyDDmBD6lnge6eBPuKuZQ5/eOpNYX61MlDKa1bD0jm+yjTpk7ckQ3UvYEcuaChzl
	 r3HY/TqcCioSTYy8nJOyyedWakedMceMlALReO4dxIpjItCwB8a/QNFqxtKHoD1Zeu
	 DzIDcUxy1Wav+3hBP0GSsYQbqVU/ieFHJKhuw3/qjZ/KSgyeIkO29CYnKpsAsUbTxS
	 GDeMYOKHKb3Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB08AC636D3
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 22:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167589666575.6172.13720464806049472875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb2d85e54c713fd3269e51c5782a6c068c2bcc79f92023c7c741647e294efba
Date: Wed, 08 Feb 2023 22:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675896665
