Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515E71FDA
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58FDC433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690744928;
	bh=TAt0kF06Nzgwz26IdDdNVAlldpx60DCEbsg/08Hj9Ng=;
	h=To:Subject:From:Date:From;
	b=lO3jZNuvXVjqGoA8NoDoJub48/BKvGehKBrswG+qpuv6dr9orjaNcS7diIHQv66Hh
	 iaZ+sp9bhpv0LRnBcBGUjvaoq3/rFRAByQa1FSsBY9eK6ahv96XccUOKHuxy1ZsiGH
	 RI16GsI8xFu4br0qZ8CXJEs79MbZqmH2Ub0n74nSXJAzgJcVHYgoVG44LM9mneJ+D1
	 9Dd6+g22paD9eNlcziVqogcPoh7v37YgkbTnjVXQRZzglQKudh4Ok0imZxGeEc4L1r
	 fWxtX2eSyFcPEVuxbUN1pT5To9SazEnZCSGxfKHDeevHZ1poHnlIOl+lOpUIlZIOk9
	 7MJO3uaPyu8iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73C9C04A94
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 19:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169074492867.1160.5319633712860462139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e795c1981e69a145c5560d37a82437cbcb26f164c7e51e9afbf049cdd49debbc
Date: Sun, 30 Jul 2023 19:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690744928
