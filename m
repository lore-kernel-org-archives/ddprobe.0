Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B93A34
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF481C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688370968;
	bh=F2EGagVpSGGcLleDibkQNGWGKeBe0c32UWwUaUb/FtM=;
	h=To:Subject:From:Date:From;
	b=ml5/hG9jhVkHahhJZYG6Tk9GYSwrvf1zEH0+O//eejC5AANfRmiLOwpk4UqMoiHb2
	 94i8WFSFiwp3FXA4GMwUViPjBm9DkgZce4NBs1PGeAPKIP7Zxl9hoe6iKeInwG8yi6
	 wfo/V+CUwsanmuSS2djLHJ5dEv1f5r5oxn3xDimQ9XEQHbczcPXpUczyAH6Fm1PAmD
	 /DozUlsD7cnQc1/hntCLSUDbQDl1xVjBuYJvzZMNQYjxOK1V5HfQg5IuKoyIXM/2DX
	 iqffed/MrqeIpO7utYX2B+vwVZYwMo2HvFu5Pr/PXd6ThKiBG6ntWI9gsygPN5e3nr
	 2rtKlAGbXm3AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F39EB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 07:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168837096868.31479.5101009285507882233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd7b9570c4e9bc20f0a0eb499cb34ff86a88e50b77f1cfaf09f0cfd82c4d88b
Date: Mon, 03 Jul 2023 07:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688370968
