Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AF023A2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 15:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA4EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681917305;
	bh=bLY0Lr7U4eBk7T0PInr6XEyWoWEf4J9WgFvbJCrcj9U=;
	h=To:Subject:From:Date:From;
	b=TzmiSp49X6eX5iv3AlzV7/FjZh1jxj3/RW2nauzjIU4MV7UvgyPrLVLiMs7yADBf/
	 2BN24hpv9nFa4MyMGLkX0WdDvY/flhJOmBTQ5BJy7MvCCc/DH/ahzuNc66/AnY0H6W
	 GQ2TBlCm4293Y51JpGOLrb5PSWBtBXUYABSk0wZqaEXNA2cRnrrcuc8pmdLRuQDiir
	 Rg+zy9KGcDqBNMT/HQJWzAn7O/e81Bb4P3HiGw6VpA6XWdvLzbC5M558TPV4ZV3hmC
	 z85+ZrNAP936ed6Ta/COdfxGi3LEA6BqtTHQCakB9OmwtFp+NiZ/K+gXdD/aDN7bnh
	 4LIS6X2eXzkAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFAFC77B75
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 15:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168191730575.26661.8860059484176260471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54599a0d05394021eec98e320a7aead167b5e3e255210acc2a365e16147578d5
Date: Wed, 19 Apr 2023 15:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681917305
