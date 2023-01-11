Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18A42101
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A6D9C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673475087;
	bh=UMonI0U7MiJ6vh9uw7+SL1oxghTEhmgI2FuGDXcXqx0=;
	h=To:Subject:From:Date:From;
	b=H+/nRQR9ZYC7/5bpDuDWFhH3ZOP0WSKYDkcqHizW8umNS8AdoN/A07yRcrV/zhDWi
	 oQTAN4FKkpl0T4PVBwra5yPRWZiqN4uNYTCVL7WGPs9Z7uDBy85bRZYI3/7D4VS62l
	 9w+UCLvKEBl519l9Y415rjJtVpBqNbpTuDbFejxKdzkuABB5IXk8KlfCD8P5u8kAyU
	 Wkx/PU4MZ7HirCPa3E2+Y1/IrRrPuh4zohifnnVFEer6MPWtDDV5FpaJqyz8SHei6x
	 CBgAP76kdgldwUQq8UglqqaIQlzBVKZEQNsDOWcuQmLYsIdRUsthXWcQyW2orQXLdk
	 E3CwhHVmLMPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C6D4C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347508749.548.13209935635686585815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93d433b86f27ba8a5270ec385f1da074cdec015c977bdd3d468d0b4948f00c89
Date: Wed, 11 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673475087
