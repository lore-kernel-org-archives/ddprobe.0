Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73BE23A3
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D29C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666959654;
	bh=Mx3lFgkWU6G22LjDd+94B4GOxkoTDRQ/lqIusosPx58=;
	h=To:Subject:From:Date:From;
	b=VRqY6DvS9eO/8fUsv79KpN5DfgqbhEZz6GKWG0aIHvE4VCcPjGicggH9xhmJFxs7m
	 0d1nkNWKIja7GOEqvZoTXrkRdZaKCCHPf/PQ9QS8yYFg7CiZn9fPHYTlG5/NTap97i
	 vH0lL3qvWPkJU/7f3yF3Oll1WyQgcdHD7s2b2AmWfZSBFesN54r6teAkHiRXeJbLi+
	 MSw5Iuk7c+m2p9qyrTj2UR+zfC0zNJbEjjCtiaYk+d1WJ5Gl1Za3HnRrIsSZ5NXRo/
	 5Ug9h3lIVq9yJLdLLuMLMtTEYLMrYMQS/OB5WYNJzhte0jD7F9Qz430IYFIHjZP8km
	 sgbzdnZ/Jcd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580F8C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695965434.9839.7196331746349998041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8468937c479275fbf0b6480010222bff387d45322988cc83cf768c61bce5433
Date: Fri, 28 Oct 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666959654
