Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F68946F
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 14:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6E9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 14:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679408885;
	bh=V/nXc6YounZ8ygGvhwmSIqDPf3Bf5M5fP9x/ubi+qbE=;
	h=To:Subject:From:Date:From;
	b=WNJALjLGLiLXxcTwdGi1O3d4vyi4HUpBNM+EisI9DgPQc24aXP8V91y9HMMq8Gh5I
	 I7aOd7rnnGkZT6JkPxTi8QLnI+a9IfUt70FNZQW0olofL3GqKkZj5uX6gGgFNLW10e
	 gn9NFhIvNgQ/bVHTH2q0oLgWciG7qMHVEnZZ8n6FDHuS31bMkP1/em9Bg4s1FPnaO3
	 VlIMH2psvTppoSvlp5tjRr9CLAqmXzlLL6M+vFBnMH8wglA5T2CHmAth6m7qJGi9pE
	 tzVez/3SK88LP/M6odhFyz+988SvP1ykuK1oWn99LpHo+BQf/1qo7BEli+1SYifnhi
	 +jp045xH1UzNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6F6C74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 14:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167940888575.2492.5115163251066444876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fbce29143ebb47881795d202fa64ebf0fe16b34650901dc7e3b744e009dce70
Date: Tue, 21 Mar 2023 14:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679408885
