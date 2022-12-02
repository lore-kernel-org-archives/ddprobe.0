Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C52671C03
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8AEC433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669968654;
	bh=/90g7Vvvf0P/JyjkrsQMd6TKBt8u0g89DxgY88K2fRc=;
	h=To:Subject:From:Date:From;
	b=ZbbQrvLOrF8fdLrMk87byKC1oGrnSek6owqWFExSzcw+ENqPr/QVxadRwHNP8AK+2
	 iOHENL9iP7uGh95ddxONTcmz4ss/jsaq7dmZnnTUdEHDiq5ddp5BrfxXT7OW70V4kj
	 k+n4QyPlgZIG9g3q73DbC/AkBMutTfdwl5LnDfsymX9Qud//dvpg67fsRDLR+JiLLM
	 MwEnObrlkxjqzRGFaQF+dCTPc3N1SoRs+i8uQH3ibeUvaUEHztIcaVamDRRUjYrdi3
	 O3gqRTZPBUj8nuJDCPLPyAx3l3DxLkQdIkS3lhemnXy4U2EsHwax2uEyTNGso3S/gQ
	 vK+Z1QF5BUkbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B79C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996865433.24287.8252958607829859911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fccae0e400ad99a80afc6bc5e8f69bf7c2b7f5feb77eacd3a3135de30a7d17e
Date: Fri, 02 Dec 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669968654
