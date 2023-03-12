Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3685F1FA3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 11:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B97C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 11:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678620425;
	bh=kGfnDMy+q6C7xiIEEqp7g2YE8QkenX9pZXi1QbD+ylw=;
	h=To:Subject:From:Date:From;
	b=gv2Dl/e2R0HIzmU8XnJU+e8aTrkzs14aRXB+a3vb/Zqy4YIdWUUnZnjSk+864DAuM
	 nSyGp/N+VrSdlPQv7YyS222DO4A7d7oh/zP9gXsoASA3hAaJPyVuDAUc2wWDbfMiL1
	 /iNAFFcd1F8fG3URLy/aiUz6V2p5+hONoJM2nok1ECcjGSqMSRr8U36Iyrjto+yiYl
	 y0mQopYc4nmzbLyfy2qX9P5YiFaLYBxsx46nJtKty1FQkPp5ACPVWjt3n9PP3xqnsg
	 gljSnlp4bZszqwUAN1HT/xdpcp2V8DOnt2tFBMf3YTCNlthUHlTgguftQWvVdRHRGO
	 4rgcrhcPDIY9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CD1C74A4B
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 11:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167862042575.18831.7948575877477446044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36afc0c1870315517d03648544b9a2d78fe3044177dec983913df24a6d2727cb
Date: Sun, 12 Mar 2023 11:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678620425
