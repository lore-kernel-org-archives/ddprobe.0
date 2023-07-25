Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF3A7C
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 02:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FEFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 02:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690250528;
	bh=fYgZqxbGPk2vSUKsOktFv1wl3OfT8903Wz7yvveubhs=;
	h=To:Subject:From:Date:From;
	b=TMbKJqQSEpFL+dabVAFtl6Sgji4ZjtPHRoIV8KzF8QAjEhcxBeKUcLTkh1Rsi8is4
	 q4eDIb4KPlgRJjgo+1QzmbDdmQCGCXeesuRjKX7o0i8Bf6PnNDCZJodpuYY/SHS84i
	 lCEcN164qPM0cJggz6+5R1zy1k2iSqy/0lJIG3SEf3v+fvbqBMAClQcbauFY33lrn4
	 HNIIJtPCx+oXjzmLogHgN7slKFP3vmmrmEuizkozicrY2MKeTEDnb3X30AQn3K9xtS
	 HXRDSW45nhHT6RmzaHye6uIozABl+Fcyg4ycBpco2fAueBJfeqprxODA4PgQtrr74Q
	 zpzlt8/OZ0uXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8320C0015E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 02:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169025052868.7905.2322674705897993378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b532f0e97fba0c76de0b54b10d1ef97e81b990233ad4db42258bffbc1fc601fd
Date: Tue, 25 Jul 2023 02:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690250528
