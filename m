Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349AC1FB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 06:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D493DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 06:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677048665;
	bh=BAbqlyzpH6sgs8hKRwYP+lWEta7Fath1E3ezDdQHwxc=;
	h=To:Subject:From:Date:From;
	b=JaUgJSttaP39J7dh2ry8lsuR2Jbh6zEcvcP2p9VU5bCZq44+7EuuBLZGhVXzwTf5w
	 HRQDNtwvZSENk0GflhCwFauzpKCcAO41/DTb+nZ3F/vPJSMCqPDmn9Q7Cz6R+lUk7q
	 3eUOIMRdTd04jGBX4FAqM+g5tB1V5QS7MeG04ZeLF0Qq8G0mrqx8/+zv2+lO3j8vic
	 4gLauOzv7TzJ9w1h3Y6rx050x11CyED188QwHOND8TWz1ZMW29M8fieiJ4lTpiXiXl
	 LJU2tWisZD7p4AYE9v2Js17HUbGbq1SrmIx68HheCsdOjn6U5h8bydpLde4MT1saxD
	 TD1GJOU00mDkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADC8C64EC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 06:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167704866575.15267.16005053010311999487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b2948b1d63a855cddf90b5bb8de7c1a3c9a4ea8b72236cdf1cc7aa1382957d
Date: Wed, 22 Feb 2023 06:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677048665
