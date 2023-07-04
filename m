Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546A6525B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78C3C433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688463968;
	bh=a74q2CIUu0pwRFrs1WTOAGB1sqY5SjxODemKxiiktik=;
	h=To:Subject:From:Date:From;
	b=PbEybDCZQGvMo+mufw5e+QHBGBSR3H7gxdWf6Og1iLdq44ej4hCecsJq5Uint/xV6
	 bIepIWDAsMoVKskEeoEu1SMwFzbjAKoLOAzCh9xP0Nns35T1GJdMXWxI/Jrcq+d2kD
	 IhyMi6GDzjPbS66qKWtiWdmgJL+ZopTIHBYi06XwgSiATk438UfxDyxjYy4AVkHM/n
	 VDg+uGBiNQcqNqndayCp8xHTDhcAwaVSlC8Ddgbn0nmXx1j8AY+Y4NehQTNYGnEwZ3
	 KeyOwuJ1Y4ZWvSeDxVEX+QSQsoFSgNjcDyhRVQwIpf+l/jD9glLq6+a//s8f8uKtDV
	 Tag2TEg1duZ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF3DEB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 09:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168846396870.16981.9611947385826109101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09452e7b89a6332e35eec2265f61279113c0bd0d222551d962d51907b27b25ea
Date: Tue, 04 Jul 2023 09:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688463968
