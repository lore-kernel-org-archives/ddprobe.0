Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F0863D
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80E82C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668147654;
	bh=hYQLHFc+veAEDOUOJjMPH+tyMw/dDrYJIjqeOjBo8Gk=;
	h=To:Subject:From:Date:From;
	b=OTSOrzLH7oMUB3VSYgOVR/VljrDvTqhKUJtOrWsXKMtvO3kQAQQGOeYYpF1N3KIhy
	 Pzoel8oRpzeRf6SK6JobI1UfUcpUer5wTVSnZYHvBuZ9ZZemGoc9owKEDkyQpV2zvJ
	 lXO/nd1Y6lTqGGKOv+jy3oFweb9GRCL1OSx2hQpFJW6IoeTsIxxrMPLXkl57/0E079
	 9hLuoZNzWh/fPGHLJlzme+IrOtmBUuCV93BSE4zXR44fXCfGAFGNMQg2sAo4Fn9GxF
	 gpYg4wKUwGf3L3Bk1aeB01FLI6QjKIS7CCkgx4c85p/JytomjID4k6e8FriK0gneqS
	 E5A2AJ+xIrn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61382C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166814765439.15282.11414839873963060210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405c7d46db58ba2d1a51583dadf0364bc4eedfe730a9c79728ad33533748b386
Date: Fri, 11 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668147654
