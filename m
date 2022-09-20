Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D6B6111
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E666C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663714253;
	bh=NggWbbz7SwBURe5fmk7yiBWKq47aCvuBvxC8Z/f1Vps=;
	h=To:Subject:From:Date:From;
	b=n+5B5iIZxD1rtrGVwoDYlwgk5IKpFrzEXkNF4FJJYzqIDAgLLFOJOSMKefNVzLFDA
	 kNQD1gjaSL+dMD3VbvGaOu1nLXhSSeJNQdnP4uEHCyqu8MkE77gfmIp0v2SuhvqRnb
	 ltObDLwQYNx5Od29wXPXilrC1NF5aaFAHCvV9ejaliICh9W0SAqJ2d7qNVyXAlb7W0
	 aONK/96Vl0QA9gGrjlELgHFWbXPb6xqYQek57+7zgtZbtjYCAas9Gw3cPpjRbSUQAQ
	 rTWg2cLgTYtqwYOIz5RmETCpKezgpNgyzW3kXHJ/w+7iWpEiuhkkNSkFNI1xtZk9Pk
	 XcAoon445RqFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DBAC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371425334.25759.8110841798186765654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c0979254baf4d8c30aec759b1044fa5bd8662743986546686ce753a4c8eb50
Date: Tue, 20 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663714253
