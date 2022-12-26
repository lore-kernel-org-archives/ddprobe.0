Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B8A36A
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91639C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672016487;
	bh=eMyo2vB3IPi78hVWMdPcnRxm1AYtTk4hXdDN5FGg0As=;
	h=To:Subject:From:Date:From;
	b=NPrwECCVxg+5GSas1UrnoPqnnSC8XMjHaXXJQjimJjgEOApy2X/feJUO++oZiJad3
	 IFYVRlcdAVNxtIWpYRaQj0RKdYTdmcEaX11bc1eVN57ur8VzWtfGmKNN/rhocIlMc4
	 chgQqgnuRl7QWeHh3oyFL64lewADJep9mv2OiLkNVPlIOsK9p7685Zxf0vfjNH6+01
	 Znpd/tdVUjniDK6IuwOQkmeWVkUwmYSAILvTRp8tVzN+6KD4xqwMt2es1g7uMTpcyz
	 YOMVp6MpXheDZtJ4NUI/sG94K4byrLBX06/KfXPV0zDXs8yMzouPXT92LhcJBLW5fT
	 syQ9VGq8WgMbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76BBDC4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167201648747.2195.13709705013153747178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050984da405a8d32e29284d6c9b2f4939c93bbf4ec2b31c2e311aaba6193796e
Date: Mon, 26 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672016487
