Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48971FA9
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7347EC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669976454;
	bh=p4zWzKEkvAhHVPKA9dfdPQrGXc5rtxTsTE6ZfQ7x9FI=;
	h=To:Subject:From:Date:From;
	b=PJPsGnA4WEOJRpdAlaxL8Szf/F8CIJEkmoJEpdY1cVOZL5LRs5IP8PRrQzjSOD7SG
	 WOOF+syobVDawyk/WxLkcSScZ6g81em2pTAfUT13hUnc6V/bAdPNSzvHFHoYFDtRok
	 1pJaAcovrwo1BoB29WOIuZ6kPZMj35YPR2hFVQs01pkJitPanUt28Pio/om4VpU/OG
	 MGLmSG9T89yRrb92X7WCmyGJTkVcvByFZWcZR0dZetBpWVkrbWM4kOH2guL2PdgAEp
	 bnsGLwrJdfUCbq1zh7hNQIxI/x5cU6aQKr3pwYYhyEs1ot7HSk/GcGslzk6coiIIvz
	 RO98J71MZBSEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58343C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997645435.32432.10475965971517014579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4f909b43181aca329845f0b861e2d8d9577517e3ccc47d95f66cb4be507129
Date: Fri, 02 Dec 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669976454
