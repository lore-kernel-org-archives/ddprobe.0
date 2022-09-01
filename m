Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C741FA3D
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC63C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662012053;
	bh=6wuBWm2L9rF2CZubqid1iP36SzF8UeShA0IrSRcty/k=;
	h=To:Subject:From:Date:From;
	b=RrxDiK5QSyHCnzIDQjAamgi0w6hnoTl7D5MWJTVutEHVk7+stjrZZ01H8QYYg67ZS
	 8uGYQM66TcQxtN2LfZKdwDspNNcXRmAHLDZIgRiynvSvYtI2s/mXYQeDnbrnjueWxN
	 z8AITLHH7gJz2YUoOUv3Xp0u5bmtdV5RYG3LguSDoroVbTFsCaI1PNwwfZ9sHqCSsC
	 DYHzUJ1Jk1e8IjbyPbIELB0kJcnyT5ih19cJPQjPWbqIBwj64Xfz/XkRDz7E0o/Ewf
	 nMTTgqpjhcEnY8gdZ0HnhTtbXcNiTt5Sy/J8ACWpA5JGepZ1edrBQ2HELan9LuW4ZY
	 GCgp/DgNujPIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516FFECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166201205332.31854.5544817201342100017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab0787e6732499e901620f2f62db90b69e525506b2023bbff42a37951916aa99
Date: Thu, 01 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662012053
