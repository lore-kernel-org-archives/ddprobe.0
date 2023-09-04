Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C039AD5F
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 13:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA30C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 13:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693834448;
	bh=stEtwPcVSatI73UzW1YmbMDTj+wa+RkGaqRlhV2ojqs=;
	h=To:Subject:From:Date:From;
	b=cRQDjD4PqWaw0G6j5u2Q0ANW3zFZZIlDuBTIpVd17EZQQgpWznt2grdwfQrrcvxQJ
	 Xkwh2tBt6p6SQKcsNgeDT2Xh86MaS1ZBHf4pkqFreYq91s5+SZe74uUrwZuWkLLAqB
	 PDKqjMkDO6UcjDQsPzPbf5sWMIzbqyRkOww9dmPBQBYZeaxE9EaihCOWkDZyxEPpN/
	 06UBFLSr9qkvb4YNhXVR7wAlQdB01jrdjl1MyXRs9yp03OSLBK8ifEuWiVG12lDcW9
	 EDvb7SGW6X73HiM2hLW5lvpSMALHOIFeAbNyNxyPurZgVy5nOUghCWZ8jJ90KoIN4E
	 ++Q7Gc7vJYmGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C80C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 13:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169383444873.2794.6244428183454292892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456324cc92bc0ef56c8355f5e7691cafe9f9013429293252fd6c3ffa2b62a2b3
Date: Mon, 04 Sep 2023 13:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693834448
