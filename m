Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70961FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7543CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661478652;
	bh=tUdrf7gEorX5Cznlo+E1RdRQOdArmRjGXKnjxi2O+k0=;
	h=To:Subject:From:Date:From;
	b=HTzIb3Zw3Qar1lhS0kVBZ65hhnfwKJrdhYyDgyIVwjT5cmM9Wn+D0+zTOHRwTu/53
	 i/Tavic0DdHcMwBBHc1XeZiO1YYaSPvMkUimwRuB+uJ2IjU7s8vfVRTxTLtTsBqlDk
	 +QGPlm45RT1MyCp2Qbfk0PsTZJPc7XezsPJNKe78oBkFUIswHACyg9wudm3WOrI2aI
	 bpylK0TwniSi2+l9My1w9gtmnGeeNAqfkOnr5EtVfuCqI3NccZ/UohTY87xWqjvbGj
	 FtHfcBFStSaPTm1HthJdSPI86HmnSJXWEgy6HIT9XllpFxK2ibDTy4MRqUvzI8RGI9
	 OJaVicCglJzeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B3AFECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147865236.31559.8423989233569234699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d0aedd6b7e27e212b4ba36be215f71b262208d8b46e44371e9792d11d6d352
Date: Fri, 26 Aug 2022 01:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661478652
