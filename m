Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF74753A7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 777C7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663336253;
	bh=hxgKEuqHkubwOEnOWt5mbmeLBMd3Uz5NCOV795zWBd8=;
	h=To:Subject:From:Date:From;
	b=nKOqlEg4V4IbTmzELR3nhoyrtLmlwJCTMW3PsUtTjRsbt2sH2d1gJxQruntOh3XlI
	 kwq3/2KS1R1v0ighKLEgALDJGexrdPuTBERKcZL+pO0YCC+w5l8iO00RpOZyqpGVDg
	 CnEC43/7JJKgpcecVrbTpHOSfngHrFrNSBhEzrjX4WP6VEIdwdhmydhZ+j8xcBxsyF
	 +P3HhRdri4f9CfN7h3ZdyWQ1sgz/vNeIwIMlFXnwftQYHOnKe/pdF1bKBd5MDt101v
	 hk20KeHYrhhAeIanD+81/3MyW95ZBWrm6AVphSIni07EbyjLrUeHy+cwnCS5i5G4A6
	 Evv4s/4Kf6qDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C220ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166333625336.21130.12390821079487031399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfdc16d6f8de1a18c599e47063629c8a65365fd94d934330295773ca5de6a7e
Date: Fri, 16 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663336253
