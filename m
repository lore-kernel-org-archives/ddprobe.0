Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7101D36AFF
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 11:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC865C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 11:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695124508;
	bh=ICP9u0mhPGMUeMqYyKutCVQyPaveSG8SbojJ3XSsoX0=;
	h=To:Subject:From:Date:From;
	b=hoKchINWCFxpk49Wfuor3I5sCNM8gi1VcH4qi26szejLx2PHP0npPnxpMxDP3WVbI
	 id5CPTQJ4z6s22J3CXyXcWIUDNnbQT2lltIDLNC4D0YgM7Ib6jO+SB6H/nRTzKGr32
	 ZzXPFxH7rDld8vQz5Irtp6pApAflye5kcAm2+7/3Cw/iXt4yjReVmFqTHg0RdYOsbV
	 kkRAJPjBFPsVxxbnN2XFUYVP5IIwYb2JBiuV9uAN6AWxSo+bKH+Ys1gZvgbMoTzR3J
	 LKCwXZ/meleUjo3OqKQL+9lXEB9mxQpyh9p0kTn87r0g0orho1sJjo/iESzeWWe6J+
	 2tEPMG+0si+aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A488FCD54B9
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 11:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169512450866.5924.6545865732526774252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2cd1dcb4fd0f056ac538bdaf59f0deec2d67e2357845c990a7c1a1c15bb0f0
Date: Tue, 19 Sep 2023 11:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695124508
