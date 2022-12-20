Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52B91365
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81807C433F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671576087;
	bh=I8hWbVBn1WEdkIYkDswQtUGEn1hr41YMJM10PPo0OQ8=;
	h=To:Subject:From:Date:From;
	b=gNu/AmAUkHFe9344RXvAC4fTNoV4rH9MTZTDZ7nksTD70lB5a2oarvi2vMszfkIgV
	 LYEcaB0JgC0Pg7FQXtAXEUb6C9PDPsuv1YaMbKRQhD/Jxfh64ICd9neyGB5iZ9492l
	 KKTnh7jU5oFp8vY4wBCxMC1FTxhrR+6is9Zn4oi97iJffINuLxzt9Fxr3u3v0feMpC
	 XpIusgGqZQ2rb6Ypib1XVU8/HHK0r56wwhdf0478K+Hegfo40Kj6BlR80zAaLF6rON
	 PHlUBl+88uU/AaLvdu3+mgq92pAVC6k1biOMeTahnWiZW0UBgiJmOZnWO4z6My2CJ2
	 dizcnJCXHMfgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6407BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157608740.15998.9403242078752556416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a52e2f10f432b0427a7df242d136262693a0dfbcc5ee45197f4dca228ccd2892
Date: Tue, 20 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671576087
