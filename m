Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB22E7E7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95AD9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671331287;
	bh=xHH/Xei8uQOWsCWN19X2rBB1sdVOP38UAD/HEWbyuvw=;
	h=To:Subject:From:Date:From;
	b=bzxrMqr3PCrnLEMNazudn/Tnq0tWiLWgKJx0TxxQrNxgQp5U6AJ2yGBTK3PGormjs
	 rRwEiJHueuqTWyX01NMpsJnq8Zm+dwlcJ05QANSI0kr+XoXDOPMfVsI3GkAtTAMwHB
	 51pIv93HfSC7fi2KqNQe9nxoVH946640r1r8nlNLwBzzRLWoH1AnPPcnTghYyl5m28
	 xeu8EGOe9ChQEfDawwHs+gl3oDgkhRATGKtUOMO/hskmUV+z1xWNcltOfcdxMH3eBH
	 uu8gsJAs7D4gFpCYZis0bqrlPnLHqcU3FSyhPNQRyt+ByX3SPNgtd/2xNwYjxpKT8p
	 1Cca/7DQ30qhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AC96C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133128746.23333.7146620462634602779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21367e0b50442ec2cd681164e689b4cad1f83c012cf576618d76bf5a68d72c5a
Date: Sun, 18 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671331287
