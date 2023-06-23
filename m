Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EDFAD23
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC71C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687531388;
	bh=SIHzMJmFWZHZof1K1fj/SL0FjDQQKzGghCbaFFQLGWM=;
	h=To:Subject:From:Date:From;
	b=u6TNpfhcpLkadNGvNVVL4N7TuRQxuFami69MndDvhrMCTBJUT2QxqXf1iutEa24OP
	 XCtEEa5/pn1+GE8Ft1I35vRmNe90ZcNlReEI2ACbA1L7SF4vhHaxQ6wpAYl/CqLt3v
	 eMFqT37+h1BRFWyCEtxIWyMqCHNTYB1fsbLFC5M0nkNODB21HQHeUbNoUpNZQ/4NVR
	 RinLF0equsnqB9MHoWsqVfawYoA0/Dexd0LQaL0srzuVC6dyB02+Fu76G5hb9Bskle
	 U6znntA5QwnMUcczRoIpxhajpEDJytSg77W/ARdNQLZ3XSTwaqVjAA7m6bmdfoca0b
	 l73PaROh7bdBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEF5EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 14:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753138871.30336.6461384191809404646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27abc040023d4c7b2358217b409f9434652e9e0ac0fcf030cd44329cace51eda
Date: Fri, 23 Jun 2023 14:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687531388
