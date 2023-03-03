Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D15A10FF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA28BC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677825365;
	bh=Ln4vF63rb19J3WdjpAmKn02rwsli/mvZzxPtza/bToY=;
	h=To:Subject:From:Date:From;
	b=Waf4pQ2O6ItrTlXq5jzci5pmRPhckwFyVpOvIHHYgDhWhQSMn0iLpeToTFO1GQ1C4
	 j6OXNQZ4BdtphTtSevrl48WUbpytRtaqHJzzPHFWmP1iiLEuVzDdcE4ACygeRx2t13
	 es9tzrO8DYBM+EitnFIwmKTwxp3YWSAa6VH+3mJ0gQnwBT2lGp87yNAI2V/WfNNFYE
	 BxukJ7J8oa2FHT6oCP2qqdC2xjQPC4vTdbWvYrZnXvBw17CtBCedAL0g0iazoakC4H
	 bN5YL6FWrAJN5ImD7vnau2yi3YmVMo/iuLIGfr0LqdpZZRSHspdNeUJygHtFSXBxxF
	 R8leXLEQCdVBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE15BC64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 06:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167782536583.26694.15625371552828078393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd242f7276d3a5145a0235944b31c3de85fe848124e5b119fbb027c08cb3f2a3
Date: Fri, 03 Mar 2023 06:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677825365
