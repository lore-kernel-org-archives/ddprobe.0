Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06B0374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D17CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661872253;
	bh=grsWV3HCOCYtZxFkbwrGwXkPdQDy4oSj11r+OPp6VeY=;
	h=To:Subject:From:Date:From;
	b=RGemhnTzQDfQx127WYr/1dtJZ4fp8W/Ra0/Y4DJ2oU6Are+tcIBID8xVRgk1VklOh
	 eTcdj10r3mtP8y6BVfQYZXw6u0rVtkFyDbpTnL+0r3jXtsTIxIYSxl+vafwOx4/Oqh
	 GiOQttE/H7sC60LvvJHtkXxL81DPnCMQ16wt20qyavLPDd12zh/XX0svSLQ65PzTuU
	 OkudYz60xBHpgNRbt/AmV0NQ9Ls13bfIT4TgEocyiIaHo6BizQcXgidNPyw4qRsuAp
	 R/8+ocDjMPZUdeFep1uEsqG35WAtJSBkFIkA6VpE5QsIb8Be9TleBSg7+4lxmlw055
	 wPC4SngYEEHwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FFBECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187225335.6599.5565031384300246160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c905f9145199114b52d2771e07dcf0906b1007776e36c9883db567e944f3524
Date: Tue, 30 Aug 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661872253
