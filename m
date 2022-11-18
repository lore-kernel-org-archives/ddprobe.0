Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87B03D78
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D2A7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668785454;
	bh=09qxgt2A3b2lCWcb0HIbuKO43lD266dID0cvy7/hBkg=;
	h=To:Subject:From:Date:From;
	b=jpzcl9PDbTaXippVgjaCMcLqnDFtjAY33angv27ArPdaBSvb6mPbMY9Jq7v/v+i3a
	 /x2JBcXCnxWFrPMpiwBGvJsyRsaoCKLDNYZVyX7llw1ojhnfBtGsc5mE3m7trD8x52
	 gMHMBkICpvu9VmS5eX4xp9F8t086M2khe/1rCjPo49wcAlJpbuZU2VPZO3RAbfy/U2
	 hQgHSxEO3YMgoV2+2tMymR2c3BF2wy9YYLbUdRSC+7IddvDnEtkPjhlCte//nrXerl
	 7nddP5Nqf8YT5nyoPVL57cr5aOw9DL2Dc90Otg9EJFuCkkA6GQVucHwuQ7WI3PMdRk
	 HndVVz5nrVzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AE1C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878545434.30857.14641433322278515327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c0c5c98e8f4c7c34c03d44a421c0c5cb4a7175b548900d7cba2982003aaa71
Date: Fri, 18 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668785454
