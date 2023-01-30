Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFBC28E3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 14:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29EFC433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 14:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675089785;
	bh=bctOaHJ1FLOoXKyiEkz15f7a/V0Xvqto9ta3CTO7dDM=;
	h=To:Subject:From:Date:From;
	b=EzxTXlcJy8rfWK7GkvV0M8zPsbPTB/tcsMG7FbHJeChfN1bpT+yhfrrii1kBwqecQ
	 DyTYs8VlAios/WPqx2cLq9k4tZ7C4S45JCPZBnnok1odzUIMuHjfz/qb40Pqn7eWYr
	 N9DNlY9I5MX3F+zVYozwpDbSO8SOBNz4/jMdWTigNg3BYx/aeC2rj59rfHJazLYCzf
	 fsl2qh327OsA3fkOhg0ZP3Ii/9FlxzwbfexhtSrbFVy8HCVOzj+iRM17mkV9G9kGn4
	 TJvHZatYZHWDRuZEVOQuWt/9IybBBPXiBb2aawL9IQ8OSk7aSWnYWEMYIWpyGTLiSr
	 ONKaij+fBwRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E7BC54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 14:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167508978573.26343.13269513150976239312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fefe9289e8433bb8dae2ce74892f4453b425ae193ea3ad8ab33f305b2742515
Date: Mon, 30 Jan 2023 14:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675089785
