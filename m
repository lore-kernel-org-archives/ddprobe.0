Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5536263B8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 05:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOGGtJbz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC661C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 05:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697176628;
	bh=zVLPyX8f6/AFJBmGrjpNeFajdt2Am20suZL5a9aqcmw=;
	h=To:Subject:From:Date:From;
	b=pOGGtJbzb9CUWDUP6U9vYCgdSNOEKXLquUVXvyVtRDvqz/uDBk5NJbKas1+8yVyzx
	 uIQuLFWNdoggCTBz95F0shwqvDrvKDQgA6oyxtCHFId/DAKAsrFXuHUbyfnKDWnL/g
	 s08+pNdcbFED/Pbi/BNbnZxehQYfKGAqeWbxjdEPtKwnYc2grS2S9KN99wfPNT0spE
	 ycKtjyVzprMVAL14vNiKzlIuOKimR7boJbqUO4UBZ0acmpJVHqgXjqnOAseTEs8b/u
	 Cb7heOnmgmr5eMWiB/fFxsP8MBqzzRz4ho9i/2/6EHm/EQd28p2MHiv6tJaNXiTP5J
	 PaE/KB2fyhEMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40C1CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 05:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169717662872.18858.12363984748635398788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6781d5f47ade05efe38765a8f4c85fdc8ba162c694c6b86172f1f85040a752
Date: Fri, 13 Oct 2023 05:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697176628
