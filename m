Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77D07C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EBCC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661621452;
	bh=6i/Z+d0aPrJnBr42Qh8Wl66I7TqMpkrNa3ZVA5j6ddM=;
	h=To:Subject:From:Date:From;
	b=Mswf2AfZocmCg7Fwyi4SEKv9A+4wyyAU/17ZSqu097hagpaELfhp0XWnaEbmvOn2t
	 0FvP8xrvZEEfTwOJcnMQyjC2tJTKFTwpG2EnJdrlvgFINUMXDBfiK1NNhd6FlvVfwJ
	 Vnh4BJkTeedHJUTV3rxNQ+HrAPUqa4krvfoIeN+71S0fIqXfcpnziZ7HFArnHF/7Q4
	 uBE5LWUhGvSTYFSxTxv2M4H2N1v1acvB5tVymMzdUNCLBbRn0ChHmHT2Hi+MT9qAEd
	 LUUNQiGCOjiJ6Zr7T1RQibd3tLnJu6DglXK7ssvkynnZYcfswh5upArn6Rl9pVbmR0
	 brwxTwHclpiTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A3D9ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162145233.29212.8352531899977830743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b695b858a64ee1f524a3ef927bde416d776a04237229cf3f4d096f5d8a3f7e3e
Date: Sat, 27 Aug 2022 17:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661621452
