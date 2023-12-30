Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1481E23A0
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5zPILyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D2D3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703924896;
	bh=NbrQHQJ5CHKzxonevC4TVQX5X6jkXv7u/71oV4oyUOI=;
	h=To:Subject:From:Date:From;
	b=V5zPILyMm9JxWCVn5a9L6ttWRCYT4u6CvvXpPm461EaEsTHL+nA+lILpRTfBXQk4r
	 IaauVdF0wl0maviueFMVkTxDIJNsHc7zn/9F8J03DChbpMgdmfnPyPF8tWD50RkRom
	 pUWSVWPFh2H5v5CbxqqpN0iXix2V0nUb0aMYVTpccCwd/SNbjGmbuC8Im/H6GC0T5o
	 UTKqnioXujaf7MZlDEZh5yM4KGqqTdfQomsmZwV4ce23BeDfK5wUqcAfZaS5LraeC+
	 7cV9+XC7kXbxUDAAv47cS+RC1Y5nR3zAwpA6mnLBQoceAc8A+vc1a8xlAs69xBhH4N
	 maS1jRB+DRYew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60381C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170392489638.10491.14239791987650749228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e894b4738f4a6e22413b5709e871308897d0582446ab1a7051275cddf0d4c7
Date: Sat, 30 Dec 2023 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703924896
