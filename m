Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393357487
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E712FC433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680548225;
	bh=X8qnr8Yd9N7luda/mDUTqbMs5dMm0maeJu41G8sLoxY=;
	h=To:Subject:From:Date:From;
	b=ItdtVen2AjgQzsqLjHr8emCcUMV9EqbLmc2xMjbtUW9/+QCAqOiEipzGmt0AghL70
	 M2qcpvVjwtjI8eG3mTJyizY/PrNG2cjfG9NazfOiTcRq03IHYUYuU3IC8FB3iNK0DX
	 QbcTJ0NrXV5Fd0ElU22SKIMvEn+euAXYmPZcJiloDVfpyLG8PTYO6zoGSIxHygDRn9
	 D0Vgur+Xg0wuWjRpGUFUa+W+HXmVlkjHqhZ7MhxlYgmjUoR2iTf0J2R55yPeiyWEIW
	 5y3Fn7q6CFpBJXsuKvHB40RPK0X5iho/uKsKncaU6eTVJZNeXECcLOi3cNMEJeLRlY
	 nxBQTUChRTnYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC415C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168054822581.1106.165548996885889085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0bc0427ac30992de879c8f14dad0ab01387ceaaf0aef9ac0a56764c5f1ff3e
Date: Mon, 03 Apr 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680548225
