Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB8D370
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7643C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675953725;
	bh=xuaISkKquPcy1fRAtIhCj7xcEM4jbT9e74kJjErBpHY=;
	h=To:Subject:From:Date:From;
	b=ZyGmjFXo379xDkIGQXfeNC3lOYi9LCUm/lLuUlK6UDbWNIGAJ3Ph0TBjFhCETdsdZ
	 Zyl0/UIEj5wIq3qSHO+SAzzzescjev2GpAz5pzG5gWWnIbKEzsWjRGQPEXFtXltEYi
	 dBWca3ecPlSesIWaveRPzFa1MKTE+0bdYsAU+zcvRFM2AD1IQ65CpkKruVDQtGkySc
	 aD8HPXFyBF2gK+kYACet2KEo3kCULFjWO8r0QHMePLDtIlKS5XAd76RaOdrmgTjC6P
	 Lt/HDnsdp8bOG4L22GZp6gdls9IRsrxKU+QCdIlU8T22GbuPd/JWXIQAdHeLiY3ega
	 wAZyQRPPNYjfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFA7C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167595372575.740.10982704275986699061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cc7891b0725612a408ad34a862fb7488977f63080ad3d9131442fbdafc230d
Date: Thu, 09 Feb 2023 14:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675953725
