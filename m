Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAA37E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76766C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665365453;
	bh=cgCxwh4RqbIwUT+f9BY8gGUGOSBl12Gmxx8LbLJ7si4=;
	h=To:Subject:From:Date:From;
	b=kqIyv2QM+4Ij4+ttajSqM4rXz1oNRc3hGOIdxZBHYvZe6VqCDCjJ9178sj0sZm7tC
	 +Em4lh5MDO3TH2c8qpGXub8Z/7Xmd7h5nLdWJ4eqjS7p2ozV7ovibtSHpmlflBm7yu
	 dCfnNxiMIbKfnWmocaruD1gkyinKS9Z5tesnhzitLL3Qy1+t/sULcw/+s8Bfh1SjbV
	 SNgvmBA7+xqp6AvvnGbb+nhWH2YfX7ms5xW2T72fTsdm3jXDZbfGmQ2hf1Qqx7dZpL
	 vsH56pEB3KtHN2cuK7rs33nd/Ttafd6jLG63wt7kFxy4MY8HDaL9ml8CtYwm1gTf13
	 ZM5dSb0oiFIrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BB0C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166536545333.2397.13822923820787139091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e7ffe52b0382e9cebfe24f0adab83f25fa159bf3e0a384ef10fc728eef79d9
Date: Mon, 10 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665365453
