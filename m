Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF52372
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 04:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7574C433D2
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 04:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675917065;
	bh=2Xw4fZc4QD/loO+BZTg3PXMiz40m0A4Gx//yue+MQUs=;
	h=To:Subject:From:Date:From;
	b=p7LTuteuKO1jD3mDqopfFiicc3uUBjNuekJzFYEG/7bFqSun77mDShwijlxW/9su9
	 ksrBynnlO3Ny+NNnWJrjnnFzhjGIBu0zjoUSngRMAF4Pq9CAzuZEA5T6cnZcsuWFAP
	 qyeyMp5kQ3RaWG8gnNV6apyDwrI9MjUTO51DHpejvM/0Cv5HWvUCZ8VAtleZW7zQiR
	 IcuftBvGn6+ld5w7kUXYFU3Ck1qb+b9PUA/xedW4Tlc9LNu95SjZqbLC1FrYUS4lLM
	 FCFCTSiyvpuIQIMexgR526RC4fm91XGsBD3iRFSjXaCG6sY41XCLQPmFaKuwRCyX41
	 V5ETT0vuKAiEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD28C05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 04:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167591706575.23122.10695831776262447834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78aeefd335c10d8ea4fc8cf93cf959eecc735bf98cd2044613c83e8dac80cd2
Date: Thu, 09 Feb 2023 04:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675917065
