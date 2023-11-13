Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000A0F9F8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFBQuLW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D01AC433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699858696;
	bh=7pWWa1ZFMBHnzSlsxCkD4rrxYWqIyx9pMo9u91mx4dc=;
	h=To:Subject:From:Date:From;
	b=RFBQuLW+2lQOu6kRVsSnXCIde68W3F3PUeG7VNzLWR7NTEtt3c4lQlr3Mqi7/LAUf
	 cK42BB8r0QxcgT9YQu9179/u5XQvEMfSrLSUVfuZsEbZd+JM8OIJSAfhwe6Y/O7y7s
	 McKAi57ownHYnZWX/iCrekczP4Fk35ze/1BG5eyLacEDOmpXvURU/UPNWSrv5ibLY0
	 5MGeLbGvLMmwN6fvuxGnyQrKomwQKYFsELH2AbVz6Sckj1Peqr8JGNVAls/yjxTbp1
	 3SbdO+HLwxAgHIewOErRPRZz5MMqeupErZ7ROwZifC4mrtKTOXJ57RvKz3hlwYuRri
	 bwIuQDJYb0w5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C36C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169985869638.4774.13568257916910901559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce5328e3933addc31804f940269e94ff3f744169dc91b4583c19fe31a1323c7
Date: Mon, 13 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699858696
