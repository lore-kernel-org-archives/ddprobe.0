Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4430B1C35
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC78C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689317468;
	bh=FsDY5Cd4/14TH/8pbwsMjMoYMpzN9gC3VSy3y0y1RMs=;
	h=To:Subject:From:Date:From;
	b=rxgwaETIO13ewY29gZSBQSYbxWs3SPlGwGAZzgN2NoZac/9Z0HUN9wBIPUeDkVILa
	 v7Fw84jSCCstl4xR+CfqXtpjVm+ak+Y9CtJ4dp+OzPiGs4LjCqYY/etTcv2PbS+dDt
	 GqVpxniRybHymZ+gQrP0cHloY/0BcS3sxV2ZR/zFzfDj3YBNffHYEZzxwm8dmrLPmK
	 KDddUG0rj4ohp2Shp3yHBOj3gPfUj6pTqaKSQ/u9YriqHMhGXRJ4IbJI+GS3VeZk3N
	 lvWq7NGejm3K2btx8ISjS8MNe2gPAgpW4FtMjVlxvvaWBBAjOs58fCosmqyLBhNTat
	 gYUUsrX02dmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEAFEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168931746870.24856.13468326017310752031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c5d03d9f424749185a7aef17fe2158140cdeefa772cc78eabf7c2057cb8ec9
Date: Fri, 14 Jul 2023 06:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689317468
