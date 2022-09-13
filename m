Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D2C1FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A5FDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663041053;
	bh=0uv22b48LbaC88OY+bGLHFjs/jT95cKo2IsHdcMkgn4=;
	h=To:Subject:From:Date:From;
	b=ErS6bWP2eU8RCza/HIfXORcYsfI7pnfPM26t9QDrNP/9WBi6L1hBRnC8rhlaOlmEp
	 S35iqP1Ox3QiM+U6Sa8tAaXB83USJMaKUsN3u4XUs1B+/5dhDZ4BhtXflJI6BrzXQW
	 fWIKEeh03hfoQJ4L1s54Z+zPuMoWEwZvVAqzdpyrZdqrKQFvEPGYUOUQLZPF+Q2PFB
	 kvEAMGBvmiKY1fPLBb6VGADHo7t+nVofFPvnhMhmglGbLWF7DaCDETnDn4WERVv/g9
	 YhFIADU91TDno3q1yGqXgjOcecxTYIoL/mERDFs+jxsnVRc9Vud+3s8zGZ4IvuE8Pa
	 5mKq/DuyIOm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DECC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304105332.18979.7393824243196985873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0eb577680d76cd2dcdf1c05aae0043443f5caacfecfbb7b98dbfd6a25f59ba4
Date: Tue, 13 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663041053
