Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E3C7F
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7RYi/F7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87B49C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702944496;
	bh=RIsp9JVnfiHZ0P7NDEthEOjwH648th1wPcFFLLxGlMk=;
	h=To:Subject:From:Date:From;
	b=E7RYi/F7ZjxxgFqF+4ABsidlZRg0WCnvlROAtg+kGwGkOxV+29KZBD3l3WqOjp96Q
	 PIaTHDuDWDpMja93xXjlzClPG0gOuzzFTf+lwYdfUT7io8Pft7FLIC7iZifiK3mJ4d
	 3t4Ic8znSMZ6UK9YmO9SpmvPnuoYAALPpK0enOFhIiHCcV7cI3m8sroKa3/V2PcQ27
	 5AdFk68g3nxfmm16mBG9ujZ1uUzT4NolFNMf0l9M8rHuohJlRBuqJQwp9lJBXOhWSi
	 VENSBtfA1ooaC2C1FtOIAgtgwmaJjuph1YWtZOPN6M6rn3BUKZdy+6ngeeRAeXSnjJ
	 I+kvctYoA8QvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648BDC35274
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170294449640.18082.71707360302905562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4b169052f173140cc3ae11ce36706311f6879ada07502ccd890dc507eff3b1
Date: Tue, 19 Dec 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702944496
