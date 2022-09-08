Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39B97C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DCBC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662639653;
	bh=UJqIKgYOWHdDSs1n78+srHrBdGtPW6VGnAuWB536zyk=;
	h=To:Subject:From:Date:From;
	b=t2H4W3dddHhTaCx3Cx0PalDqdhos1QJPd/TNY8UNSWatHVKkjWAKyBm5EXqHclXHs
	 zohO5AvtUBGCpUZ2DfqaFidPm+xKAwpy9qqLjjMcgr3Vsmm8D28tn88dbM7SXKgY3d
	 kHhl1BFnvTHSBbx2LiCPd5LvL11M63npQVWCndUdujmo41w67n+6wEBYc2WgwZU1Po
	 SoH848n/rcA/i1h3IEG6MzDoaQk0R/1+F7E1dNP9xvt5VkpkHdOrPWSrcSIkgGdVoY
	 /L/tKt/kQdU3M1YUIUZlE/9AGD5v/8aC5ZAubxZDs93eWG9TA7zSri0vSjOcRPNQ1o
	 0Ov0VkmIwLB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A70FC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166263965335.16393.7802913817074905811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0540624741ab7bd3b7a29fdb5336211901165f20b5dbb1bbfd785e8c41a6ca19
Date: Thu, 08 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662639653
