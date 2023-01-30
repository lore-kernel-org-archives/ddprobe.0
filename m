Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EA179F7
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E4AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 21:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675114385;
	bh=r+OLW8bMGUeRbEnllih/i1EFmMdnYRRqjhmFmhuyu7g=;
	h=To:Subject:From:Date:From;
	b=mtogap0O/XYpxg/hzsmPF/apGmJxcm5lKHuuCdyyWKUGEu0j8pnqSGQCC9hupCT2w
	 svAI4ekWFzNaHEDXtFeQNBdRt4ir28UiZrvIlRl3OJ5m5LH7+A4BVGU8lKe2A93VNh
	 sDnniyfSQ34GRjydj6XVdD2pM3IUNIpSjnHjUe9pi+OGz2GYA6V/0YJ+4ogZCP8d/n
	 RZ1fGmb0eeUDbrpVhYdM2bI0sdliuGH8FToAlqfBTokYMgeZ0K0wUsM7xoGWwgOMtF
	 Y8tQZHKsL5JJ/Dzbpx0di7X9EMEi7PxZg1U/7AsXi6TN8xr8Au2sNGBrNRZFoOdNvo
	 gHw0lF8ubFatA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41B2C636CD
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167511438573.29258.1461130179327995768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988db71da11092eb5777ee6da2017ad4339293a2b8e728404e13a22718932cac
Date: Mon, 30 Jan 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675114385
