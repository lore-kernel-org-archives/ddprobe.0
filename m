Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDF79466
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D228EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683896105;
	bh=877dycHMUdMcmNudVNfitwiM4QU49Rn8Kukbra9ECvY=;
	h=To:Subject:From:Date:From;
	b=t97shcZQmjZ8yUzc1yuCDx3ZEP3+qlalupK704fvVyTX1954Nw/YQf/LPHPrUnJau
	 eh74F3wUwyk9mX2lCoC8EI6r6XbC8SLXBHqEG7BrdLxjbd8NqaTKAlnYRauvydLJpI
	 kJIk5eGM29djofqidXle6a8yxUleWaPjEvjz4HFXXZdndJmarbOYpNqn/YojZ8R3eq
	 GcL2irMlf4lwPwUY4SpM6CKYPoxMXPUSlW6JdfoSiC5MmuQL2UDZKuThsuyjMtuAZ3
	 gd0b2NXbgosoQR4uB5yVWVXqMaIi/ly1UX/+WGTQJy2Ct6uVQlwLmH/R3oD1lfyQSM
	 UyL/lX1TFHEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9FEBC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168389610575.24382.11907274672310168097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fb4baefafdbe70baa8f4dc1a3c32004edc855fcf2d1a1889b528f502a88e03
Date: Fri, 12 May 2023 12:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683896105
