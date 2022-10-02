Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50B33D8A
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72877C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664754053;
	bh=VArGSafLm2xzMQl6C7UlVoHib3vkyyUHMbn47vxvdhQ=;
	h=To:Subject:From:Date:From;
	b=DYMUuyr2841bItCWdy2Mtwe+39JiEkFJgxgkLbTIf2mSrVsGXE08rIAbPczcISGBO
	 A5vx+QHA57mA1t2k2xp92d3kOZ3WCZh8vF2tQfGN81w8YiksNVYgsMBcrOVVL6Oefy
	 HghFE4vbfL1e+RfxMYEAz+MDuaaObuCLGGInVYjc9ZSGNkPYuz3WSWpJLqDTMq6Hmz
	 oRxnkU//h4F4Qmb12JnW76fF7R8Z2q3+sbSNVe61afgdwR9i+UGmVIozXhvU9M8++R
	 3XBOXNm73Zt3CAcUyzkb54e51eTyCC3ZxTEpbMKvLyFEdpFO7FdAjlI96cRLifnmVS
	 dMtYtoC2zAq+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5772CC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166475405333.27770.15730945555919066291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b90337cbb294287b94a792969e08f530410361a3568df1ab1ba8a15448b56a
Date: Sun, 02 Oct 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664754053
