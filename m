Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5C3362
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 08:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6E8C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 08:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677401765;
	bh=6ZF+14GGQ8uLMuMZAE3WrNoTCKkqIJ0GAjh/FyFVKYE=;
	h=To:Subject:From:Date:From;
	b=obAeiVPTN6ovDJhlt40cVh8SYmrDPtnIlEbyXVhYLIR2CUSiBEISVdYEH6SzRy5e4
	 /s2cUcjLTzKpT3f/koHo1dD0EsjB+Qf7ZkvIerzi77seM0QqJJdpzQZ+ZEFlnBxhfB
	 j2/ybPDOh9xjnU/GMOmVmLm4zBCSZOEUKDMpA5iYCCfUP3IoB2F+D4d8DZSY905SFm
	 8kmPfWJ7soFe819+Dnz1U3g1GLbSxAC+iXNGkZbcUDa+8vH4W5eTz6qsDB4ZX4r8x1
	 gnrpYbeuxi432qBGgj0OWPGoqBfxaiZ82BzWJNhQwCRzzP374OAVoe4C6sraBEWu9I
	 tmmUcXdn/zITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4644C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 08:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167740176576.30315.7355844479932145697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c42559d2a613fe74f2a9a2ae276419e7a4906eb123e3830442a5281ac74f2de
Date: Sun, 26 Feb 2023 08:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677401765
