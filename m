Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A1A30CFD
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lng8Uj9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 844C0C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699378096;
	bh=7Tv8zoNlY8dqmV0aDxVyt0qbFgsVXFR+VRPS1T1wmpA=;
	h=To:Subject:From:Date:From;
	b=lng8Uj9eZBJ4fRXqVWpYiIOj1p8GgKdjVyxWKNiQ6eQQOb3TjSxHfX+0BMuv43QQp
	 cClzj/Qgcuf0RSuGkQ/kYQ/cpvFshYTfyZFL2uIpDXY24vR80mz1K9p7weI0D65xi5
	 XVbe6IhFtLDBGI4VR3Z2hEUJhIgDGKq1Vw0FaQL6EJh3hNFErO73/HK8TZ7fYcCKdR
	 AGJOkye2CCw5jI1hadZoDzPGwBS/PmMFyayUfaV8ZOP4AdaUo6ChqadRig5qDwyc1+
	 ctF8VhwCx4ng8WdX9YBDjNKZy5uwauWuN9W/FD3a3M8nRj0z3JDs2a8iT0MX1ntv71
	 2BOiYOAnrTKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6757EC4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169937809641.1157.5645860327680797716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e254e494bc3cfeb35de2adadcb5cd00b930ba85d41adfc26942772ec05f7e54
Date: Tue, 07 Nov 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699378096
