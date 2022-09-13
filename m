Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3CD3C26
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 683F9C433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663088453;
	bh=d987ljf/nP0O445GXhUvl+awGOeDdJ8qI9gjeFQEIEU=;
	h=To:Subject:From:Date:From;
	b=QIFzjHGnY9OYBYFfvR/g2dAuGdEGHWbJfp/gQ39c4+Y0OhCUf6+zLeu+9EjYbLkFu
	 Esz2tR4PIuPKYkw2ihGyT718Ftg64/0SoYpeIVEKwY1wHlvIX0uVQL8ZEF1jy89rs/
	 pZ16irEYJEK+j2OT6d3eeFoki7XzLRug7+VScLmQmENFFjxrh9HlFvGv0v+EnaiLrK
	 lL9wTy6YKlkGAdaYlBJh46OoZEsKDGlEq5Wash65ycVrqoUi9AldQ5gsnKMDNA36OW
	 q3UDEudPHqGyAKKCYUpkKSLmqTYvieudB9zBcrSllnfjea3aUCVK0fV+MOqMw8I3rN
	 Gw4l+730uB9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514F6ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166308845332.30359.16562680533191823241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8679df54dc0787c06a666320c5ed1cb00fbdc61682ef5b563b3d860851e2a0b5
Date: Tue, 13 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663088453
