Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2F117DB
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42B6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681253525;
	bh=/9RuvSpWZkj5bO4ExNvYw+t3SEMcgafUkaHuNgjgpYI=;
	h=To:Subject:From:Date:From;
	b=EmInSG6Pyvj3f+vM5UIlyzAr3s2hM6GqTpjUH6XMx3vSuP7N8wZz3yJxCfcjmFQLX
	 umL41I8ODIp7HKaqYVa74+ltyCxitllKXFp/0bsOppSKP/zTjCPGDoZ1kCrW0kcZEp
	 Ynj0X8yaM6759Fx4qwjAWORUfpaLI2iB43KjPGKTmrSaGHivNASS2IL+VebT33UUNB
	 PXimmwnjqqKsTGUvDrECWVaeW58EWyWpavDgpKJJ5fFj2VYnSi2p7FxszFrXdj9hcQ
	 Vh7YNiVZqr+xX+5HhKhP1EP8mjItnW++FrRB80OW3Csg1KR6to+P06SIE/WbAcaq25
	 BzxOvsGIZyIvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41FCC7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 22:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168125352577.21454.212809232252738479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf91024bb405851b955ef4a8d80edfd2300213b38dd3df226ff8ba290e03c74c
Date: Tue, 11 Apr 2023 22:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681253525
