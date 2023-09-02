Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CC4117C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06F1C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693620248;
	bh=m4qEMoR7TSQDVWxDJredP2WPcaq9C62xa2ZqmX4mqCU=;
	h=To:Subject:From:Date:From;
	b=XroOHs56C+QgXEtreFJ/BxvPWB+tHRPPG/cFZ4DGMJWnm4rDWiQvJfGCF7NHdMSUv
	 NXzyI9Bv0uOFuqvTHj2xBtcp+n381wf150aPsoSURibhy4yKoEzQM6xPpPevRghqPb
	 lQ+eyoHxdNVYiSzoRZA8/IyiskgvIHZEg6XB9gMCR68/FVm4sX/ajL3sEDZwL72pDG
	 R9unpAoJ26taw73yyApSCj8xXPFGc/zd0UVwGBqGWjj0FUFkE1ohle5yxgH2wLk9Jv
	 I5X9KNJ5L+YTFcvDyJ08Y+jNFu5y40qe1623t3cBLOhkkSgDVjmWbvIZZKiFWJRFEn
	 ef6OtFkPNWmuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF82FCA0FFA
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 02:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169362024871.26153.1287749474302297828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51967bf736b2900e45348102f8cd16a151c339a25d8707b2b2f01e6cf4bcdc0c
Date: Sat, 02 Sep 2023 02:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693620248
