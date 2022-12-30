Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D283E46AE
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A24C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672432287;
	bh=M2l/4OPf/2VUBUhYteUmYraWYUL/p2Wn+sf84pX6Wqs=;
	h=To:Subject:From:Date:From;
	b=hawVrEKe8LC+ZEsL54Tq43DAdqm4PW/VKysrUXTDYEaEZaTbM6EG5V7FTrCNZzgOy
	 OFKVnz6tRFluBlwTThAdR8G6ex8YnXh7wxkBt4gzzS2bi8KYeCGbpNOi0w9lxvGVy5
	 Inlv3wIOfvE2kuVQo22srV4pQZOw66Z90CK6nq5QtYeLc3jWGJoRYhhx6Z0VKYGVU6
	 hPKrN/+labXcAhaJwUw/oaoP8RQqUOOaY0xwZScqyvMfk6H0yhSsBsYJK4t4LRcQk9
	 jWfo5F/pHN5io/nQYAQAc+E4L5OO1GeqPZQicRME5QcfbLdN2KyR9TesMkYcpoq0XK
	 B+1YA/GJNlBzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C55C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167243228740.1617.3276287300581569617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5adc0d10a81df1d1eced4a369d74a55b9e61a50f2ee6d95afa17f5cc0392e0
Date: Fri, 30 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672432287
