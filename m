Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95E0A48
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A99FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668971454;
	bh=IcC8UoyVLhZAt7BwQNpbjW6h6bPu33ctVSIZZTELq+U=;
	h=To:Subject:From:Date:From;
	b=WNYRHdQeUAzxYb0c8Xw8UPKAyMDQeL56aEIEcktDN7aSwACwB/F99Iq4i+rFfnpVJ
	 mVC2SoOqnQyyrCmOIwQGlEXRYfRdMADh+mzbFVbgCqjVog/10ScOcyxJcUs4qaO4k/
	 l0FwQKmfLvZWkINedDwnNREq/gfF53TWPAnWLMn32Zb5n6oDF1v0XUHJexb0Xu37yc
	 crUVCT0Hd2V1tRgJcv8eXx1NQVDPLV0j8Zvh99NjwIzFn2TqSwCQdiMFVkryiC1xad
	 rf+Fy3OG10mxkAR6OYC/PY1jpkXLHOQCItyLgdyH5h36ISSd0YPRJRKku9J2P4AFuP
	 gpS17QEEaRE8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D6FC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897145434.5765.11120915578634593402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746639b51cca9d94f068d9dfbbcf7fdc222f0d42ae52a62cc743d0b1ec6afce6
Date: Sun, 20 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668971454
