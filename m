Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E401365
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E7FC433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673178087;
	bh=qaT2tIcT6modJ8WIIbmkLO15w/rm4no+mRemULwpCBI=;
	h=To:Subject:From:Date:From;
	b=l37dOEWr6ykNuxoO6oa3jzxfB3UXKLljNctqm4V6D7b3mNR4LMg2LXelUPVi/Ec7G
	 GyiSlnbsmqxGEsV39lHZZKzmIRdUsX/rNvTU7v2ln1BWY1SycPzPmBibK+HHj+4wh7
	 KNTyiXWR5mRLMOLsStIgIs/0xqa2T+PXMDLp6cqjlZaYwDFnHSxQc9RNotUlJEoVWU
	 0mWGKM17ZT3jy7JOl4j1hoJwJhWg2oARozu0UlAt9SqBlEuHDXwRKFeyij6Rp/b9e3
	 ubAFI0z0gNPJCIeJu4yG/b3X57CEZ5uUWUl1mLRz77HPCsgQNGzZLI1JYBwgCEIciC
	 nO8XUw7PretGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693DAC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317808742.20239.12630842581423094209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3dbb38b9ea12df61106532a0d2c3eda28816bac8f1efa1d438e90d37150b38
Date: Sun, 08 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673178087
