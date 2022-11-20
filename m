Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4F462B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8659EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668916254;
	bh=6EQt2GzBOZ5FBJEMDOGrTFu3o2j1MrsBQtI+r/wIvTA=;
	h=To:Subject:From:Date:From;
	b=kaJ9zqUX1G4y6zU9hOE0tt0NT9pr+w9Q09xsWCEVWGYyncX4B0NCrRZ3+JkZxlJoV
	 ulIff+viUJFkSDxmpZZub3SAKTP65k2svrLFYD8y+5MPyjCgu8T/K/umBDuBfiteaG
	 2GUNcEdjw6rhlpoa7lWrvq5GMOr0ntk54OlzDBwlx/uwax7CgG/51PgclZT9KYD5KO
	 CDBvohSbJwVblRF0h/7Z4aZv88lFgFr05rN7u9uwY3569mji35yYqkEv85CfMoNZrW
	 o6eRj1d4yVVlVTa1WpSyd/n1UwybrU4FKhVI1agPapByElUe7mby/PE+7XDi1sesrX
	 NzdNAMG08Q+0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C81C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891625440.14550.4846814824781881159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db0a129bae550cabdccf9015a00895387fde88520253632ec314307d13b0e117
Date: Sun, 20 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668916254
