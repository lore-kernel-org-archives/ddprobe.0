Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3496F2F43
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 08:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7099C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 08:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676450825;
	bh=TKwNan/a6a1qxQrRlb5oxA/tdMARy9jDhNnHya99FN0=;
	h=To:Subject:From:Date:From;
	b=XLawOBfQcAddDvoIVd/NVODeYkwWSs1EbIrh7i3jDGpPEFDJ86fwcqmkIiWwNVqOA
	 y6K8dJzhImVC+QeVPPPaM5FgKllVRTjuC97/15kPgfvnQGTp6t/+OUfaJzYb0SHlXd
	 ukhSwPs58AEYkzmT6gQPaFUh2nSHZ4KMhdurhtRxUEoaNUAOn+IM71gAgUhNQeMKfG
	 JGINZ6i5U+8ChfKLfA8ej17foN+KrcKBZYOR/l59K/y6mZtkjdD3THpRXjuJBSlQCU
	 0C6pLSC2+5lm2mUte0ymwh/6O9We8ONPSqMRoUi92aFeRu8LYnIXLdX15H3t8xYQSM
	 pzTjUSXSgOIaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E3FC636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 08:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167645082573.351.14442706125112329775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f075f1b63d3f936763f195eff8390e805db355bbcf570c05589f47e2706b759a
Date: Wed, 15 Feb 2023 08:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676450825
