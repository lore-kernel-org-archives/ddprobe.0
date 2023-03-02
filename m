Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F9A1FD7
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C96C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677749165;
	bh=5r33C+bPQF8RW6vaA3QskuRijiyK26N0nGA6UJlRJdI=;
	h=To:Subject:From:Date:From;
	b=YpeTwZhl5llK4zb38X3R3QfAqe/p6gUvr/UsIbkgFCvh2AABqyXYFYx5pdJv3fa+k
	 KsDAB1oXdOfs/WjpQ2I9dpb9HcwTyNZBUv523LKAS41FmT36i91Otk1wAWt1yyMuyf
	 ZW7lLd3b8CY1u35TVW/OaL9ktJKvCMtLTpEzSlgbFbBYcotoxmBEZT5Um+HMuzhxR6
	 NH3IZpk1S8uM4OmFFxjatXWzZJx+hCYzcQcAuvt1NBEN5ollb5BQhIupd7di/BE8q1
	 2646SRYDUwD4CjJNRHvUZgWNRR4JVCetm7gbcgpmXHgOIuG4WozMjHCx4zs4uP7sA7
	 lKqGoz7dsTQFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A6AC678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 09:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167774916575.3213.12650790162758536829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1a1ef46d81cc5cff5155ea21fe7c134327cc75c14a75d0321a930bf4be412b
Date: Thu, 02 Mar 2023 09:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677749165
