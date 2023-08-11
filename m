Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC3B1171A
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21B2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691770988;
	bh=6XDb5hDTRj+Il8p/pLhJWvbV/LFISfoVo5NuozK11Y0=;
	h=To:Subject:From:Date:From;
	b=P9f6LUTI/MNqGrqOPSv/hcO7T2xHCkolftJCIFD/Np3zpZ5fYWbnL+h9k+3vYcYn9
	 DXt94JF9fz17opKLhUnbE0nAKY7agAFZjQ6U7jZyow1OAf3A2VuLC6f2aNKXv6lW+Z
	 kRigQdlQxGGTUAWgs3SGTm2z5nF0gG5tjXzxRtBu4mp09wxl93s6NBT/exRMnd3RIM
	 G5iAmhXXE4fRMbcY8r/muT7TgkiBXLd0q5jTXOiZ5nrgQO67R2tBG5Gyf4lrSlWeA/
	 LPQCkGDVE7hpaiPlXbygKCtH1sr80g2LaF40YI1JBHBH1cdrO5rA+pe+jtwjElXL2F
	 bp5TL7GIQ3BjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5099C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169177098866.19686.10463710250641762272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b1496eea88ac649d378cd4c217a90d63e6473ab3d0ad1583acf9ed0a18c965
Date: Fri, 11 Aug 2023 16:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691770988
