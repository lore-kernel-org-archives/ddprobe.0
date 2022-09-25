Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78D520FC
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEDFC433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664131853;
	bh=ld5/pxUTazKfndmp7ppvzlJgpsH+HB//Rj1rvIOeK28=;
	h=To:Subject:From:Date:From;
	b=tz9Clsu5hjEZxc2mpAwNyKXOzxhDyOnGc1cGcMD2W6OwavhpOJiEaGrX/bztkjsJj
	 /EHm2EZpWqBNCG6d7aHplwlhu9lHMffpwAzWYQJZVkkKCv7QxKJsPpnq3d4sklJm44
	 X57zsxiPOnWpDl1//MxGwvv/GLNR5zo99M1F+Xo1SaUfHDABrnIO3Eo6v6T3ojZRw0
	 WarW9Oa3PJgBJjhJaRHK1AcMi+evNN2wPwc0rATbKArCGS1ZIsGWOpM6lCghp4QbIZ
	 dwjGLRMaZwneHsgrf6wYS1lvS8oz2o8KyEnAJRhUC4vg8Ce85p0cenGa64/OE0oWAu
	 /DHvvpT74036Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5540FC04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166413185334.22557.12233158687387886711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ce590c0fea4fc38d9a09feeec427a0ea3f2f22b69cf043dcf4c3f5f23aeac0
Date: Sun, 25 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664131853
