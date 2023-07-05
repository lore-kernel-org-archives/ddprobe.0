Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CBF154BB
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02C27C433D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688588229;
	bh=2qbkMB2XzSR1p0tSzEMyCPu+mmrMRMBfsmPft3G/r3k=;
	h=To:Subject:From:Date:From;
	b=SSQlF5ycn2CRVR43LhyW5duVbqUMnXa7U7GP9mcTNZGORjn1Dd1VTndWGNt/gHzPg
	 pOe860K7fgu32WZAAtQGm3FfzQd3RFHvAaG+zdbzVXR0dik4RTukWTcL+ATw63WKT/
	 IMjk1m4rKJZjMAjFTZCHAjlivD/4XP7VwlHqwuCqRQRhgNVnoqOBbWUe9URkjD/Vgf
	 ygZ9pZLIFp51HMTZKxoNow2R889xbCwy/XKcqFvweqWnwNr7KDgFLFlEw5exCdV+C3
	 6l7CrqBj8B6FCV6ezOX0b1m/41hfa5F97737RRvIHchQgpq7hbE8ijoUV0hS2253i1
	 8lJn6XdbT05Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5005C001B0
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858822866.2650.16601901194512770639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fef739051d279b5b3152b1170578d3e38b439ac3bc5a7ba696af08df7a49bb0
Date: Wed, 05 Jul 2023 20:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688588228
