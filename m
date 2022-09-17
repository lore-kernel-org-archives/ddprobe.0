Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C020B366
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67D5AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663387853;
	bh=xORabBaNHS3lplw+qsJaOzTff/878elnPbpAJgVrCHM=;
	h=To:Subject:From:Date:From;
	b=eSXYvQLhyfNJkrHWklAQFn5YJYhym7LdDbdxAfwOzVjdN0SjfWcSf8s9xmsIEvmWM
	 /xaIyglNm1uOPOkw0B3G8REK8SXT/O4WRZONtC2WrMPkNBed1Zs/wCsOV1phMxyoJX
	 h56cibsIwCbw5r8MGzaCk/azh8QKF7LlfsMxx0s62XDThx8BCWhsnmgcJn3tiqo2r0
	 YuFBhmhq5lkQOwdT7I8GIQYQpUm7t3YQ3qD6BX+ai/i/8gAZRHX1qfJI2WI1PlVsem
	 vGRJfEFhW6eDmc9h9lQDqqO/eIc4hdDstWIo6LYiZiTQW0iMFl5ndibZ4RHR5lT5VP
	 J8LRwhvRdZM5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 507BDC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338785332.5342.4473988686095458085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48aca577643b142b06c3b0f9139f996f09e54541bf8f2a290bd80df01a2770a2
Date: Sat, 17 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663387853
