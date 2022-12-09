Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA82763D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80235C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670608887;
	bh=OKNt729sBYCZ93kGe9W293iAYw1dHM82EHTfOBwoj/g=;
	h=To:Subject:From:Date:From;
	b=VL9pJPc2w1HNTazCljN7aTfuDw1zh4CEhBESY6uZ2Nbru61vgMJmrJuD5U62r3AzI
	 Z5qgtbWaPuksg05lF6bLtqVSTCTYY372k/Gw9+JGoQirqFdYMINIVIX+retgh2Slbb
	 P5t4iZ+Qvivr7EGHNZ3Cr1felFdoKaBBW80wufwCmIZMRTM+9w6RP1SnqvZ5qDVGgn
	 fEhNNtDaXWSwRTMxUI5QBezaYViK8bQ4r0VMJuyUlxdSto8Fq9JaT+OreDlHPvTji0
	 5ox74UAFwROLjzato/eI1dGC8NWxr1AOvQ8bWGpZ/9KZuhUGrDLaP44AoZB7B8LV+y
	 aYS2IFSl6D+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6359FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060888739.10238.11467590645642639333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83517fdd2d3218b83cc72366171b8d87f0551d66f2afcf37346771338551bcf4
Date: Fri, 09 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670608887
