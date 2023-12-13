Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0673C9469
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuKTRGLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77771C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702440496;
	bh=aGbtXzDKU4OegZlerm64C4FK55TPGFIITWO2JE8/kC8=;
	h=To:Subject:From:Date:From;
	b=CuKTRGLvppWK2x7kwdoBNAJbS39cM/gsJ1i/mdv8hdGmWOW/OzKzS5eeQ2x7PBAPu
	 KqOHxomC5usVoM6jeqdwQHTr5noVzzye/bWflliQgcFR/eSxMuQPoHjPjN/t1/Pa8M
	 lp6WhBz+KOql7ZV56xG4zRD5jp+gcSGB7Hrihls2zkdO+ShU4wfxE6D7/eAaaU1Fl/
	 jozzwoPMeonx13j6NQoSH/+Bc9HxyNkBjvmfm1Tzd5DnG4pIq9MHJ+RPmfBqNxnVVA
	 l6kSVJIU963nLIsBA468W2GAzF/JaNU4xwdMUErwW6WTG5DWtVukUMA/eWebL21huV
	 ALN94TbQ8guKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC4DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170244049637.15286.4566847748313594274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8adfb1088a6a277fdb3a03d0a44a9e390cc7fd4c4e3b340cec101f796a9434eb
Date: Wed, 13 Dec 2023 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702440496
