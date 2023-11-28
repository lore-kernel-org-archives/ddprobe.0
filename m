Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E064883E
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ1xoQrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85944C433C8
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701165496;
	bh=5JmWmZVmlvTh5HIE8XUscg5rwxtMLSMMlD+S975Ln1Y=;
	h=To:Subject:From:Date:From;
	b=IJ1xoQrlQpWFhgAtVSBntRCh0lrpEWls+soc8cTgSTkyIP+1RCAARnWB1gXhw3DIX
	 pzxkKVKRp1LFmHv3BvA4/9jOILxvNb3lmWg7702O+z8yavky97w4cp1t5M2U5ofkQK
	 idky/Tbsp+aYXPkY35J3ogY/XpPo33feki0CKWW+W2n53jDKzAYpwLL0vgfo67B+y+
	 w9tYI45z4km+k28M3aQtsdXFjeih7hmWMABj7D4JM9KvnwCDlfkHhOiCZiENQFfLWT
	 gOU4CyDXhelxWjVudQUb2Dy1jcciRySeow1f4UMIBFpeCnGq6bUZK7XMBA3eePg8jc
	 8ULoM0ym5+kfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 652B9C4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170116549640.32698.8376039555866474542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 071bf1fbe4b2892f11f72c3023fc54c768840f433e7c8ab3d1fc53d8317db1da
Date: Tue, 28 Nov 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701165496
