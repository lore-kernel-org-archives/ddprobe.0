Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD62364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA74C433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666487453;
	bh=xu9CVdFMu/JdDoGXDhDOMVC7aL04cSyxIclAyXmYsX4=;
	h=To:Subject:From:Date:From;
	b=sA9fMl1p42SGhTMOELg/SoPvhI0eNDFlGRW+26KrvNSGBdwl952SvYcyKTgIRSS0i
	 VhScEW9SVUbqrlzFz5N8/umbzfT8wLFOgGhnxzZmko4qacN9YVrrcTLO/rzKfMD1wU
	 qZv6y11sB34BTgH0jlC8mg8OeJLf/NRx39BU62n/If9rOHd54lFKrwgrD+MxOQ4MZC
	 TQshOcbFQRYWr0h28fmkMqpW0hTSZ+3ura68sGcDxBmqhKgEGmNV4Nj85dhwaCQxvT
	 sWTZbXUj88yCjpwmfqSJtkqX91nMNk6uwZ7gPLOd4+BwZnbr3UqyPbEWo1M/sWerMl
	 jInt4jv7eA7KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53649C04A95
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648745332.3085.12071380234855537693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f64d55dd1778fcbb2e3884ba7a0de0d3d62874907a0ef8e825e2b337afa5fd
Date: Sun, 23 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666487453
