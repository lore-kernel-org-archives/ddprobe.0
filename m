Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68B78F65
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73234C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668790854;
	bh=lrFeU13Y0FF2eJFtI0VFaLywEN0xq3LKmMJeptqIEHE=;
	h=To:Subject:From:Date:From;
	b=L4rn7JzlW2emaMy9IQZ83IY9zCaHUbeJtg/mcHKC2UKe2RaL80pkBCtwFMgykwohH
	 1SysCsE/H0bHWpaR1VKjeTKt2Bzo7IZ0mQOT2zZIx7s1euMG6QTnO6nm+TvHPIOme1
	 dHXtDKHF+bvZLDYabzQOPDEA6ewAh+gFNfuUHgfWDAief0JwRIPK/8wBw99RR2GOhe
	 uWHeQu8v0O14RQhhiXh+IyhgmnUYVpo7CXr4OYTexN34TuHLCdOeDvm+mgdgRjdC6p
	 MzRgAOcpgU77B3JP98+iP8i6+A/qWMehFGitmA0FwnPQhiGa1YnBQbgKEZ4P7goIjb
	 fz8somKoRtfyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A171C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879085436.30324.5655335413544413948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe897c78835afdcb0ea7674cc20bc77c6c404c83a1c26387877dc3ac5ccef6f
Date: Fri, 18 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668790854
