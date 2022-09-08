Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA065CA6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77700C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662666653;
	bh=jmEQOLrDLIhnvN6EudQwRFzE2Pjat33xpI8hq+b9Yqw=;
	h=To:Subject:From:Date:From;
	b=jRP2q7BC6GVm07TeXE/UjEaImzBV2Pon+VtmLSJcyO+MMUDGEwBDVTFl9igZ2z011
	 XMxm7Xow5eO7HmpG+CL+O4o1az6blluY/4NSNX1OMu7bi63oeu417LOPfAXeJVGRaf
	 SaQe6PJ87JeMcmcg1A/7IsJQee/Xzf+shRTYOXJze74vf+4Oc3VPRE8eoDoU/wAdNp
	 pB7IEZeIx5QIgB4TgRJOhBWO17aXcX3lGYdKAOxU5vhtDLg7NgKcVlSo7c1TY8tjYU
	 OQdrxONHyz1pro082BOGCtcea6B2kEXGtVvdnZyn1AGBgD0LYi9RQQ71PvKngKWleP
	 NDXOFFeLzycdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BB6C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166266665335.28635.16474275959619549147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1324dad8a1c3e0da344a1ea7488f2c3c584592b02179026b37c9aaad8fd74c5d
Date: Thu, 08 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662666653
