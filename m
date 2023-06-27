Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3128470
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2B6C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687861988;
	bh=iOTbqk4aWzUaCstkYVFqsntUdOEZPOK3Xe6rPpNz+cs=;
	h=To:Subject:From:Date:From;
	b=dcIxIEomK/CrUXjYyRXsZ9IuAGmL2iXYXeVBVq//UzPsFychRQrVi6iPlKzBAWWCY
	 ij7/sxO5e2HD3ZLdkvfJu03GzGtaXIpaFmhiSui6qVVsFmiy2bY8zZTrOh3H2/HBs6
	 xpC7xDFMdwtg9v2ujkpViPSZM5ar1PiDHmvjSHZdVIbnSlKPCBe2pV/v8lTs+rJA3c
	 TT8stTpfhvTgKTB/NEDZB3N3Osun7lxnp5+w3y+q+Bi8VUoDtSBrkMGPftun2PrpXJ
	 3jYycZo6fit14hGnRLZXJWpBolxaK+9ttRobJ4ykpxGiRio5HlcHJ+9joU+1wB7Yaa
	 Kmll3u3giZ3kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6805EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 10:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786198867.23821.14870228386369377372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 748d3344619fd60b2d5105eb595bce43e741024738e51f084c71a1432cbd3dd9
Date: Tue, 27 Jun 2023 10:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687861988
