Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5C233D3
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E5B4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666623653;
	bh=kCOF7YzuNn3ObeqBzENNMbqIkNZemt5fb2B9xbkoxdg=;
	h=To:Subject:From:Date:From;
	b=OCsJvs+L+pd/6Kbv2Gm5/W4vH7Na0wmvfrrtDW7RfsaW2PRXi4x1N0FgvVfIjqyoP
	 gLC4m8mzsXWNi04fu31Wujeoigt0bnQPsF0lmlBXkc98xZHLRCob5Rtyzq4pfPR4IR
	 QqbPA/SM1zjPaYX2Tmnu35pAAbKe1SfpIShzGHWqr12niAZRBvxl0nNPcofoC29MiW
	 OrvY3fKHcyjxxSlNIClpWJMZh6hN7W6ztdBIiiz00gB+kaTtB2CpAI5/5Qy2vEgv3+
	 BkQtKvFckwSMLCloU7/FrSxlBfMBi8ai0ZsrdvwpZ2Afya+M/e70h5jupd0Y+ow4t6
	 T4giMPSQaeRNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50728C38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662365332.15477.5024422058157668878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98fca9b933febbed0240d785375ff1994a5292fe46e5a28c199dcb1863fcd94
Date: Mon, 24 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666623653
