Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E9A2571
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A1D6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670779887;
	bh=/5D/mJPpMBpCet8rZQVqVRBSEVjdhjakes/go9ub5Kg=;
	h=To:Subject:From:Date:From;
	b=M831r9VnjCjNS+Bgq2k0EtLgWZzP2W9Re9MAIfs+8+NTfeU6l2IIv8UgTT2krD8BH
	 E4d3/cDLBiF3Mj/JqNHKiSFy6xikXBDhINkXjuA2NOFne7KDKpTVOV9bSpJaAfBwl3
	 XN5Sz9oksS2N1A1t4Lp2R15IXq6Em2pPWSlg0o3hJxurP5jb/uZqVt5FWiSlOd1eEs
	 8gHqrtjUXtV1YVutp57mRg9IV/ILnhrYPkKqv6lGVU8ko7+feGSRh3YrIEhuXqE3QR
	 er4iNd/oYSCLCBlOdoatsMm+0mYoKo9JqGEunVev4xoX+URn2C2fgRRhGZiBClt/3Y
	 JwLTXFa7jm3xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FC1C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077988739.19285.11158939772055705975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ff35ef8cb0b484d547bcc8d04eed53b3a3ab6883a3940460e4a0a094fb998f
Date: Sun, 11 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670779887
