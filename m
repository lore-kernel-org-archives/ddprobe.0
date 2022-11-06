Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB54F7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDB5C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667722854;
	bh=yzdj0OOfzdwVC3L0qbbFEMb4qK/xlxnn3IS/QdOMd3w=;
	h=To:Subject:From:Date:From;
	b=brmAl4OwL2Nd2z2GEgYh8Ru+AdbsXRHikWA08dMOxThxYpHkiwkDp4oEVtNi5lQbA
	 DE/SyDojT24qw7xNkaoBYXILZorkiMICI+vKCnH9HnaEb3guXXHNGqQxn9JYs2nFdn
	 YpZolxt5bERbAWd2XxD1UmRTHKLF0nMI8AR6sOltJ4cVK3vwx1OyWHCBo+bYIFkFy1
	 IZ+D0r8iKnHjyjR2dx2DGNdxYOICuBK8AagNVBQePPVjkgNKnVGs/rC/nsERCuMp9f
	 LN55Mu7JRbozBsyCkPBPLy67I9bL+EvFANEZgTFhrTHwOEIE/viGAjJPY/epZqRHwb
	 EN+pRRabrD/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C64C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166772285431.26429.17879131113408700273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622483dadc9da74d1feb917e43f5bef465039defc6d72b87d17b092c197895f3
Date: Sun, 06 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667722854
