Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA768F62
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBGsYggY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8F3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702553896;
	bh=L9lchDKHjksjGpBympAA/cilyHFw2HaaCHt2Cm96lSQ=;
	h=To:Subject:From:Date:From;
	b=UBGsYggYBGRbwUg3wSBmfNPZ/kVbCps3QythbTsC0QXNu8T4xMiSi5a240A9zXo4N
	 m6hNlKdrJ1azLRLB/GR7Yi19uiO3HgaFnY4oPllwGW2nRvguplGDN3S5XRbdsUbOR5
	 d/8l+aawYnbSnBPAYkDo6ElN2lvKwjfHkuV7RC6w892q9kgZ64+ySLR/0/lN6JNuqz
	 i/9yu4bDQYYg90p/qzqbuwfMs/KuGvgD/Yw67b9x2I1uq1CXBXHWV/h4+xexnsGA3I
	 oHbapqME/on68Fk6S8TlRmRRdDYfpEdoJ7AIHcD16ubsYr8lzYhB/FuI2UJE9EwBdq
	 73nSjUeZTUUUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BA3C4167B
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170255389638.10283.7487330708600565766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacda72812c576ca94bcea26a037516b9d10f4448c69678f21fd59a1a0928896
Date: Thu, 14 Dec 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702553896
