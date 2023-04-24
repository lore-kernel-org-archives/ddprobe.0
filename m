Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5731146B4
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11C17C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682375586;
	bh=p3wDWcRuvWWPWVXOZgYJevOzRDknDvtjnciIpdY8+Eg=;
	h=To:Subject:From:Date:From;
	b=jB9I5Z5b7/uSAqh3HJqNWwPJhwcSXrfttWMeHxdIXMzfiiVo5LS5PSeDPhfGitiG7
	 jmuOF8dah6XepuLnNoRchOQg9pUTD+HILIiysSmltWPcGzOjtSG+N9zUl8CHhsnwiw
	 oGtmvp4AiAEop8X5CSDpaxjbo0vD2LbbkauLDTFJ+aoMnS0xp2/Gr5UpTBv4Smkj9l
	 0vc7y2nRmZl8H6M0ugCeiTASbZBUStnE8sPjc/ITEeGtxB76jwr4Ho8ox3ct7FF32x
	 cRFUB4HiZkHX5kpasdVuoddBZg/+YdTijn7si9rdDTysIylAtfKP0r9yR887CmOcBP
	 YHyqwQd1gbGuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D885FC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 22:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168237558587.31785.797038385596658132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c479f038ca10f0ac3e9d8f388a5ce98be80a5d4f528dd6d7adcae5b370d599b
Date: Mon, 24 Apr 2023 22:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682375585
