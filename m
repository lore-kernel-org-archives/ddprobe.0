Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B181BEA8
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B300C433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662108053;
	bh=oxnrBGpJjhjGbROdh3HoqrGAWplIKQ08ZW0yGDlvzMw=;
	h=To:Subject:From:Date:From;
	b=sTmCrxlGPFD75O9S+xGXNtAJ/+TEcVDmLSLPhLxf/IraQR41wOUF8MIEBcc+ZQkdl
	 elaocci6CTTHsyjFxy7oXVvCNoL8cnL52NxaZML0um8eMPCzh6NjeBOuxSkm41Jns6
	 JA1ayrCFK876z77G6QkjcoU9OZXO8e5yWgOdTquYur/jA6dNQJdZjvmKVtsaiakS2i
	 MoTtZ9IDHQzARp9CEukLNt1kOlPFKxbg06NnfLTNBCGtFdI4CL5goRBb1FBzEpFutP
	 hEO8mtVJHt2MMrxk9UPaQw/pAJihh2eeiOw0PtqnHBFOX0vbJh8T3EHk0a6e0ErZlD
	 yg0foh1ME1Sjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53346ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166210805333.13975.12662106368315824687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf038415d83f2455acff893ba526ca9c78bb6f90cd6c3271a6c381a227224349
Date: Fri, 02 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662108053
