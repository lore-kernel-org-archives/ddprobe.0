Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E027B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D37C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670102454;
	bh=6YT1y1/H28NUHxV8lqvxAuY4n8AwhfDLnd+oYnsuRxE=;
	h=To:Subject:From:Date:From;
	b=cfkeN6o9PnX9A5GRgHtMdcZtPuL/GTMTIgR4x7RYGbihc/fjSiAoZY9sa8JpyGWpf
	 dVgGB05UfgY7rDQRj6nfKX9g6pG4EY8aPDhdatyRcdYNddTkyiZRaOxZLTQ+Dk0zXO
	 lGFRBdCao4lNVhWJ+w7L/pgGcBuRT3QDtHFNJGvPSBGR6Te3MqDUm91sDz5yvBlC6S
	 +B8tu39OG0ahP/52ZrJdTccewEuK/xsn+BS2wMWsV+3eUohpxq/XvwyxafOXn9vLvw
	 TBMMn6nMyRreTJcaJduKKozpFIjM+0ciTk3cWWah2rWr/9+oyJvXn9+1ohowRcxHmj
	 lGc0fOXXehk6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58555C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167010245435.7502.17594835664632362136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cdf67d590a3f8b388d822e701d3348963783388393bcf65936de1ebd7ed1948
Date: Sat, 03 Dec 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670102454
