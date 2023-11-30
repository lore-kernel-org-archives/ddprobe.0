Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0001B59520
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQjxvcg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7805AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701386896;
	bh=CeWq7ZFb2clhEOisHjXenRRy2VRgNInlSmFuQa8AC1s=;
	h=To:Subject:From:Date:From;
	b=OQjxvcg3jJK4Yi8D1oIUTqL/TCLxgEdJ0Tu8ObwZ4afucwi2mGiPQzBGtzOBondwu
	 UyKmCdEGSeEJPnEITGM4Ka73ZWmxCuz19VkO+SGZpxvlAiM0xD1H5yT2lW/UoJYU0O
	 aWAyXouH4c47IEroV31NR1VPjE8BmykdBrVvDt4RLR3HLDNmxrL1+R6Njn7qARxAgE
	 SksPb3Ae84e0FOZFHQ5IyBestUI7D0tldNetlp43G13Q9pOctp3/gmsUdQ8fCdQhz5
	 R7Opzy/8UceLMfmYNINhfXVilWSuPTpAnzi/WkoTwpLG3RKweGjGWZkvAWtnUGW5+P
	 G3ebVpKJYZz7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C412C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170138689637.21015.7837769880751357848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd9edc934c903263adb2534c54a361e5dc3839bc9b77169b94ca5659e5d71825
Date: Thu, 30 Nov 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701386896
