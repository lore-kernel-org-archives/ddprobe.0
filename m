Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33BA211F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F99C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668964854;
	bh=6dKSkpk5yLS3SaYu1+m7ggF2IHcn79Zboah5Ub9S9jw=;
	h=To:Subject:From:Date:From;
	b=gEz6SxZL2G35iPljU3z+AKLYOBZn+Q66n1n3JwmO9t2g9qDWJtFVijpYf9qH8JqM6
	 hVhSjaAwL7Ej3L38mkB6R54oxy6bfNIbZud4/16S2byRw1Z1ntdK8jHR45NTjDBmkR
	 +TvMnbaSf61CnPiWywYpcpCxmcNA1osjNDDRilFlq254Wn0qwejDIKzLzoH8cD8dfM
	 SBgEjsRgdeD37wOwvBEW4/bL2qAYU2lcav+uVdx7XAR6Ebf1d8A73/+4w/41Qb0OkB
	 uIrd/bX47qP9rZ/rv5d3PPSIzFc3Sj6SRhE50xFzJDBaog8FeQolc6lThAkg6hOZbo
	 E3FMbw7Lao2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DE9C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896485435.22105.13139070605562053590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f52e45c9c6780c3ff3fadf9f4b2e217d5858197a8499daeac4b43ae4a407df
Date: Sun, 20 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668964854
