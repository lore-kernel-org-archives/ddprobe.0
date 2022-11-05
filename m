Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1190185B
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892E9C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667624454;
	bh=V47yfjiBbCCtQtistlmu5eMd1HUw+YFI7LZ/bmkR2eE=;
	h=To:Subject:From:Date:From;
	b=AXu2cDgrae0qJfGrVyGG3KpNJXPruZo+ahBp5dLqsOmVgWJKMU53RllQfL5NYH3Ug
	 ORe8mqzsR5uNMrxWp6Elc/I0hw4uoghlAv/PGKzcW9TEDM/ajko3EnNMr1Wb1wgcsX
	 5bRhhX/Knk838sH0WZ6I+lFtylp1yYp8BATqMOaXPZBtKUkjH9mLdHIBiMS56SJw+F
	 QONbY2Uy4vl3OFl+Hi9WH0pTKHkBM9ajEo+ERZrsArfogNW9gYzsiS6Aov3rOTXHMT
	 EZloBZNib1Q4Ew39cEmnnPwszuVsqzHUrY65t/KdQmFsc3x2exBcuTVIBEtYDwWE62
	 BKBDmExUFhjQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE29C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762445436.25071.3892403291108916737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66db9278f0d4efddaf2204af21185e92de75ae227db2e94f109e558cc8250d00
Date: Sat, 05 Nov 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667624454
