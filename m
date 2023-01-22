Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA227E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4202C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674352325;
	bh=xZsbDFX8O194N19CFP+SXjcS0xjfrB0TYbyS9EoAzmg=;
	h=To:Subject:From:Date:From;
	b=HLSmKug7Y/DHRqejf55BQBTI6HMY8d2UeCodavAY2fV31DnhGO6tNfSCcfw8RhQFL
	 eoz9bsK4q2yJkQgfIGtXTzH5bLdqoOS3K+jrpnXemmJGJ+kvktNCv9XI0T+T5mq2L+
	 twVDQrATN+YlRPHvn7y1jcBNtbyapGzphYo3+f5biBFQJdbzQaMLxtzuazjsgatVIu
	 zR6MYQH81OPFrLruoaYjXRfBLFrzqjWeA4WGFWGoFC+sVoh1hFkpLam3bBs6eUa3kC
	 x1ZVAN+CEU3LmpEfCGQcFBB4lCJ2KTuzP6zqxGNvkncbV7b9PMp1wCCIxVWr8zi53B
	 XldRjds5LQS9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F74C38142
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 01:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167435232575.32118.2012265886340957576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b2b93c01cca2c027fea31b2ab87a8c3a0ea04ae5cd38de8498dd51fa367e9a
Date: Sun, 22 Jan 2023 01:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674352325
