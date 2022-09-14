Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95D517C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7135DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663127453;
	bh=JB7GPLScc4mmbjiRLNS+9CdrbAHOP2hAzI8kuJRLa38=;
	h=To:Subject:From:Date:From;
	b=lCackmiV24HVx1xsCvZQgA5EqBMrbW3uU34QjHZz4McjL/MimZKz1qCq50wSpf3fv
	 NQYEZ0L+cMq9rCp8hT2kOw4Gasntlu4953i1ZPFTnxBbGxkMNyOKYz0p7FUdtpaxHG
	 ZvhuxS0/eMk5m+PhKr2qQaZprB/jZLWGQ+H0mXlElRtCV9DqEGFB9TtwjHyTtRmdNH
	 ggurnRi56ahkEvSgBzAIl4IN4kNZ/OMPiejmc7aNEVBWcW0RbZgztXmAN3ROI9EJ/U
	 fkDdRmUBErXt9fy2qS1GkbulA32SnHsEfX/6VjQICFfHjKAs1mqzEuU1GI91ixMN6Z
	 VV7Yhg2xN+Z7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547BAECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166312745333.1874.6155887079606298441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a98ae2271f1018bd592b95db76055f0957cd940e55a9451d12be4ff8b966cc3
Date: Wed, 14 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663127453
