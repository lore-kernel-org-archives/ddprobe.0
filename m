Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285928489
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVH1yaBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C429C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699931896;
	bh=mdEX7dkpobBX19Lf6Dp0kdd88fKcwbTRRD4+t6aPQP0=;
	h=To:Subject:From:Date:From;
	b=XVH1yaBYwLpCElRN66/iuaLrulzujU5h29jcxGqpYG2CtLE7DZVejfJpMuZRkE+fR
	 16LGvDvmSkvattDT3gPaa6ZQtb19VJm0vTz9kJBdMrqbjKIOSdkY2zccL+f5zy4gJh
	 LEnbFoEJEGOTNF/zYtVEoVMjs87iWK9XgFQcP7+1Q88KG//hc/UDUfW67IxjGGR1Oa
	 09xMlV/+t1Jiy8MS3KpVOIJBlSvSwJIqa6QVKzWzTmIfDaPj1DaMyTpJ+G90DL3RGd
	 jLHBL9e8dIJ2UJJTsVpBzuzx9haSyrZzBrZLRuI3m7Wr0sSt0w541wPADzJFhatfGp
	 w4Px4jYXVWyQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE7BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169993189644.25385.16141577986908807830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 750cd5f9531b98e66bc94f5b253090efdb4d0c74b59c8f5fb9a116c9e8073a28
Date: Tue, 14 Nov 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699931896
