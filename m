Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A7C5383
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 16:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC08FC4339B
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 16:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683305226;
	bh=G7uGiFlKRnwVRhcseyV7+HVfm1QoLIuMcf+lw2WrWmA=;
	h=To:Subject:From:Date:From;
	b=FmFu1BkwQIeL7cawTNdUxF1sFFY2OLP6wvfxH8a62LmRKFdhgCXoyRBd90pC5PFt0
	 VD0Tyjntv6M8kyX1aCp3YaKJIiPRhjT7qjS2MkdY+zdda49jio4ZOdzORMpf5ADVqT
	 Nd0aD0B51ohlqjNOlU+olMCSVG6LnOvhInbKCw4Kk+3TVzl8z7eYklyTQ4a+4rjZRI
	 Djg/YsxWasjooeRbrD1LvlrdH/9G2Y+Xu37HP/LaWvfSMAMXLsXQQdHUg+aI5Yg+ab
	 VGivdwx82wpiU9YowkG9dreQyCKuLLVJ8BvOgV6TEmNRsAG9pL7w79lJT3WJaRT31c
	 kRL19J0+jJKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7847C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 16:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168330522580.11202.5535239028625888840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91f0b69713ac6a3b66f236f0f76596845cd2df8a21fe414f19058164b0b3e21
Date: Fri, 05 May 2023 16:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683305225
