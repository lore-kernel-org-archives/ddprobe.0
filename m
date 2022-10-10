Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1A93207
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CE3C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665415853;
	bh=TsH+Mvn+Vafe5LOKMeyl0pB1oxsSbUIZQZZE114AOY4=;
	h=To:Subject:From:Date:From;
	b=UHwZcxwOnDmdb5KJbBvgOCF+amHPTSZjaPXisij3+heOSeOdokKwKgtXY/+M9LAXH
	 NlMC4Is4cJGNJkXMh0hN44vFDeo/SDGb9CuaG0nERJ/TpKoXzEJMZS8uPvmx3bElBT
	 Z1lL0SyMh/es6It9YwCzvt/H8FuVsuE8F4Jo9n8U+yHTP2tB8V76+Y148J3v4ubzmi
	 uEMkKeC8SCXcNXSH7O0WgvNHpqHI06Rs3texi9PjZO08rKnVL5Yg8HrI2MwFtNWsWz
	 Yd+eDz+K1c45ZhxVCjo9sxCqt02OitvBoPfczYFmt4g76neiQd3IiTpnoagZQWoUYK
	 7cxiCG32cbNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C98C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166541585332.31257.17806158439275502691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd579a70f62d726025f1cba7230ef2bf4052ca706c3067ba479498a58ea167c
Date: Mon, 10 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665415853
