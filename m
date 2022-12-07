Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA670361
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7628BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670389254;
	bh=ujQbjAP29jH2krBiExhp6QG56XnQfBBW54zxguP56y8=;
	h=To:Subject:From:Date:From;
	b=s0UqcE5Yip+cdqtbYDg38mUyrSbLOG39L6WOuLsZgTDft4a+MljViWQUduADcdjIp
	 vFejS3xxMmjZRiqPMbwdddbPsezLyWozJDfc45PsVS/SXMfONdsDcZSgnJzpey9Nts
	 lbNwM5YGw4hNycD5qaTcvr30qqnCWhZ5cv8OcEDl8SOOh5xtiQ410kzJ760KPp+UT0
	 bVUmEceVD0u4jrMnA7YDXmgTJf3J5LWOiOz/cZYDpwSp5+9elgzQMtfm/Qy0zfiB4K
	 6WMiqH8u/cGhc3ene4rj7d2517qh3XU+/DUT72y6La+DjkV3RTYCWFQtkmBbuovDpc
	 vslSAnCCMHhQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BF7C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038925433.6194.13003827449165015429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb91f67f9d292f9a2e8383757964c0e82b83afc1d8fd1d50df3e07fcaebd2ad6
Date: Wed, 07 Dec 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670389254
