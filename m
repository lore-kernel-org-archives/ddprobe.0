Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43F436E
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81564C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671930087;
	bh=gDimklvhSgEZidkcDeRNYG6vNCnlI8n75O013dBD6rE=;
	h=To:Subject:From:Date:From;
	b=FRWmx4wuZMp7xAAQ8/PKvGLUuPtXOxR7utcP/83+m4m8wsalnwjwiwVQiBiGrZfrb
	 WRJOexBw0cAoNCLBVIR0jzWQ/imgxXx23KqAuKy6ICyialkp8/mRfzgvceO9g1Qvdv
	 RU1oYJO/yjVtRSaUUsjaGl1hCyYmxoY/NKZrOalvyLl3hr7hJGMVDZd4LYKHEtDR8h
	 7H6klR4/G2z2EZyaOxgBzgOq/YpUaL0vnUGEArmHN6nIxscXOdASjXE8/XsbBdSSqd
	 VQYIhjDvxvjVyZ4LtS4Ov9kYUGao4r2b+smaCoJPDS9pi2bR9rj5IGjRKYEEt889hh
	 16w+chwbcviKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667F3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193008738.14350.14129703473848243377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a87e6afc4c65ed83ee50c8ca0f2246f1df5536e7ed4d97cf20210651e9522b0
Date: Sun, 25 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671930087
