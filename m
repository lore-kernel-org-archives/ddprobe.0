Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE12217F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF0AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665634253;
	bh=uC0/uOzOCA1+POgmav83YwM2J4qB0SaNAaL0NJMwv/0=;
	h=To:Subject:From:Date:From;
	b=OnFf3Dw3UUiPqMjWERYcDdERje/XICHfHA9nqRmwjIIS8LEfmV9zARD9PN+0zyMoE
	 6hfOehJpzS5/OuwDDUspXb0EoAvj4cjca4K7IjeF8vnxSEuMV0ExGBml/tB7kLB92d
	 V5D0mv1z2ZkcfheIXhnMVjncY7RbZT8aMoa/nSX1+Yee2SXR7++F2MtkHFugwuLYvG
	 jBnySLD8/NG1ZtkDRGanKjoQ2/dBlwIpWBhcn6Wi08nQ3Fsb0ryj7fEZ+Wtw5tQo1S
	 E3nv85Dy3fsoAS7ID5AmWB43KKp/HOGrRLjHDqebfTzOqt5zgbocrseL8PQYIdZC37
	 GpNg5xKboGmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BCFC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166563425332.6775.8600251483144497388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d811ef601cb95143d17398216630936120be239abad5c38306e06076de5d416
Date: Thu, 13 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665634253
