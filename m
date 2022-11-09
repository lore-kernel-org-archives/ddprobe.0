Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B9BEC09
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79392C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668015654;
	bh=9g/gOmCiLEGaKoQ3Uws4ajBOzteDIO/Is1eUH1auYzk=;
	h=To:Subject:From:Date:From;
	b=uBB3w/bNzradITBwWEzAhJFASNkWnF8Cz0IkjMejmHLpG9rFvQ5zhMgDXDelsV00K
	 2mj7f70TFIOtGCW2Laxz75l8C/HdpSJG/GUgbM3+AU4Dx5SNDOF+s1eySJyOf+Va/5
	 Xz1b+vFRinGngeyhEPccpqb9u7tr65W6BliEsNR1jnON7r+zG1dB6TQNfH90haRBo2
	 Uk68qrJA4bJ28J+xPSwIDz/dy/EcNL8N8txZaekeRxqeM6WfeHFW0IPep09g7K0A5L
	 Wg10omENtg/Zka8h8YnjCTsZjQlMCBXmFN+IUA/Vyh0je83Q+fcol2ecjwpPNmFj/8
	 eBo3+pbyKlBbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59544C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166801565435.19358.6351517260908258825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42947e51960db9ced3bc7a8ff3f6fcb5d79819d35c96dd90ad57fa156c0c3d8d
Date: Wed, 09 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668015654
