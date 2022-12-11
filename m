Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E755F1113
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FF2EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670734287;
	bh=g08BEhiMsdeuqADPJpga5q3hnNLg6PlkZm/Pu5zJiQw=;
	h=To:Subject:From:Date:From;
	b=jYrHTa1H0M1ekblPevMt565oVBdv4k6QX71qcT7cx4EJFYIRgVOUMgI3f54eHpoyM
	 KeAbHdCO82d57QYmSIuJlIv10cQ9TBVWrGFQ13sTypdT98bqIfYUDQw0ySbAXsHKwS
	 CsLU2W8NQXOhUv2oThdeHurlMtl/b726ih4Pm8NumVBkGyfXBHOyYbg5WegdaVRiWM
	 sck3MUvvtWZ74X798n82UdrKCS8Zv+/pPhZWLVBCLKUSvcuLjCHmAdRATj8F71dY+1
	 O1pVee2Nk7Pe+JK/BW/ghkuzVeCd/eNJWinykgrG9iNjo8WbK1gdkDWKm8vevOpkS7
	 NX8JcautENBLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F97CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167073428740.22142.5809156222342337785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82845c9dc55e9ee3b30a5c426ce451c5742ae333a7c2f1992249c655fded1053
Date: Sun, 11 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670734287
