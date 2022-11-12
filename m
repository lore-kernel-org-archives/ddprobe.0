Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D669C10E2
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D260C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668292254;
	bh=20/4OliZemLT5m/T9DFXfmL+5fIU/Z2R/DKSZQIIPGU=;
	h=To:Subject:From:Date:From;
	b=mIp6Z0YmzuVwI9ghH5u6cdRtwyxvsh63F62T9qN4rShHv6r06CjIBhkF/svkm73K2
	 JCl77PbEZUP1F6cH3chE+gSx/lEHju5+1QXxR1fSvgI2LKL8PJwGcHDd5Ku5BtQ1uA
	 hm2xNAh2LyYxiTd/tvhrx2rRIEEE7KkoJi/1oL2ptawsCyZak3/hnes4GrcxvvUQWG
	 GhdnTw5Et1JEg1CFTRjNLVtGO0pb4XBgzVBKMTKaQTnm21LvPuEXx1c6ndM7ns7stT
	 2eAiN4zFROmjctYSPeI/xuG6dDMxI5hfUxeJwsCKAhORd1fPMXz6rj8YrPnsMsncGo
	 g21aljrRIBUyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CC9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166829225433.25371.657663566452021724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5bab9f2978a9899d6179036c9981722ba45844a848482351598f3d186fb5cbb
Date: Sat, 12 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668292254
