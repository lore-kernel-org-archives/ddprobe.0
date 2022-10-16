Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D277B7E2
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727A5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665903053;
	bh=FcU+wMzWexPuLFMD7ZguoIk95Fhkr9a7hE1LkVzNBu0=;
	h=To:Subject:From:Date:From;
	b=gGetlNbIpWF7ba5FOmF78K/3BdV6e/V6se5I/24XJ8m3dX9zbkJa96V8Chr4mxX04
	 W+O6oEQIIp1KcjDutGb+rzaf5bggITrRxxrQVVih2HDd5zk+zhpqoetAjHzuUbS1AT
	 +2pyTp3gJJve0n6Meru+HxqJejnil1EITvuBvd1XRsmh3MJpZjnlbCuFZTzw//8mOQ
	 W6QJoV7/+jEt1ucTjwVyZ/GKRTm5ujNNTCVYdl5BshYrpDn+VebfIIMO56JVEoG58t
	 ETBrZdG1GYGDrWrfFEc+kMltGMtLGts/TgIXQyYRJXnQRWAUVTMo/C/TDxJ3yJeG6f
	 OMjv1do1/WqbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D28C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590305332.13581.18114074228231855718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c322f5949d7096363d6f19031cb2bcfdb3ed5c50d2827759fe273040fdf0b7d
Date: Sun, 16 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665903053
