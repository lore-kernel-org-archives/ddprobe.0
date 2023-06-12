Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62626EA0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 20:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1332C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 20:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686603305;
	bh=sJIG1k5xiMBUnF/Zhso8yZXnpu3aCUXF078vLdIP+l8=;
	h=To:Subject:From:Date:From;
	b=WFlGs1lVepAaf1ZBIKYVJPe41cRNXIiPk0s1AUok8cFokJces8YVncmfo1qMLIQrY
	 8TMbjyfoVgcx8ZOogtidrMBO9edQf9AOF0t7rLRFO+7DA2OqVCrFCzx15SggHllHDt
	 42Tx4Z/vurEaQAoyxwyqWMmgIsqABH5/nxRLq8Iishb8oOUIhlRqCC66uLUoU4Qjtj
	 gugts87V9BxNcEL5mqv4zQE37pd/VrJix/GVtquB/BGgLerIohJIXQuI6ln7CGfb4G
	 s3NLNt9c5P+I6sTJC3IuvSFbfrFwAuPSwz4VvGGDAEz231osxtibWbsdcTdbRSCmav
	 EmGzyXX7uoetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8598C7EE2F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 20:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168660330580.9816.14007570669730988228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1359b550f11d8621e6f00c9fcaba788a71be49f303479599e70ac26c83c9a9cb
Date: Mon, 12 Jun 2023 20:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686603305
