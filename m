Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3513A15B4
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 01:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DF9C4339B
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 01:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675560965;
	bh=/ToyDTjysVapGILUEx1qe1TeCRijYPfWYm6ATuBNeAc=;
	h=To:Subject:From:Date:From;
	b=Tc6EdYuOEmBjSCOXhlqr7GQbxMal/6uhJMeS5NtXzt2aYfS/o/s7Pp7f4OUxdfY9A
	 w3GS3/i+FQ91hZ3dls86GDamJJ/nQPPuF/Nt/KwUfhVCYUiMY1eAywNkSkcK8eoYyU
	 Qas639rZZMurqCmWjVwnPqDw0m6IOPc7955tap9g66lSgy/ncqjVYn4/7LPPWU1Qqj
	 2++tfNauvcjQOqIi2IlhXfs38REeI0odSacHbN1DAJy3dO1yQeIG+ND+MkNkr1bWvG
	 p/pFB5X1mLgOeYuxa2HgTXY77xOvREBd4al6J1cVycBziSw+A1d4nYAAt7YTpFMfxK
	 B6MNsi09GJ3mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FC6C636D3
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 01:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167556096574.16435.13888502213610484996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43c78da1af8b362cd29e0cb89dfc7bc2734e1e779ae22dea2a2f7c88b4af6c2
Date: Sun, 05 Feb 2023 01:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675560965
