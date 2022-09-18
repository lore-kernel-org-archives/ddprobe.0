Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C4280C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F57AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663509053;
	bh=8DwUZFqipx1KBQ5oXwba+32NHF00HOlb5Evpi6ffwzs=;
	h=To:Subject:From:Date:From;
	b=KP9V4fv5EalujuwJH59KgIFnJ2cjgBFU16AV/mKBygQRI1EUmZj5s7TJH5GsVvZyw
	 w3fSyssgWS6zmYFmF0ylAr4sxOIrQbhE3YoyiX0OtUUDsWlJWWdw0TFMxdGNVCi+zW
	 8MLONGJ/FzhcblGB/YEM/OixmRbkiqu+X4c+28PwH9a/2Okv/MYgbqPfGNzEFqptMB
	 QB2/4qT3bpd1gHjTvXaS4t0QDGqIW9c/U/FMv6tHzGYvgL2IXqhWMTAR5aV7wNYGDG
	 khXXfQ4ekZuiitwkaQgb4Js9iTTIGg8dacPmHvn+Bd30dacDpaFcZIDdEPlRKjugTu
	 tbKyNSrxkBBcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB3AC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350905336.960.4934831129569501389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dd11f09383702a68080191145c012962772f30b47eead78dc4426b035adbad
Date: Sun, 18 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663509053
