Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD95017CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA06C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670998887;
	bh=6mucW+wRQpKiCvCAIvyjwhSJXetbZqS8hPjRHblHVg4=;
	h=To:Subject:From:Date:From;
	b=dYBupv1ba1Ua00MK0KfDVRmCmFXy+pzSs3ONI6e9IJDPn8D4gmVqUFJE9I0kdKlpZ
	 AhY2JCWdUKLaz/6EhUGaIHSB8SmSya6W1ZfQPH7OZHruskS/3ohz2MUCyWUsSU71lI
	 gns3PSJ50lif1+Q8htVXh7ZXu287IUVfbPUIc3jTOoLG6RBWGTaH4Lu4ccRF3QL541
	 gjlIiWY8m6Ewuk+CmASTWh/l6ifkaffTGfgCjQPvmdfSMum8RO5j3Dwtb4KXbSVfk7
	 Axqtkbt/p1dmpxGFb5MdjkqI7S33YRG8dKGz/zX11w3M+yH1l+fkQiHD3mFe3TXV2y
	 eARB+qnSmNDLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B57C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099888738.7231.12457076805509504113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8244f3f909b19e183007821ef29dba07bcafd36b3952c6d0d055f15a63382472
Date: Wed, 14 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670998887
