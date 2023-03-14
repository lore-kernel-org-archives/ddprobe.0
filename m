Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EAA8F63
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F3EC4339B
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678803485;
	bh=9AiBwdHJ54Tsaw+5fxHK8qH0sTAeapcW9MfCOHqiXaU=;
	h=To:Subject:From:Date:From;
	b=gw2jbXA+5B6ZhrX8AbJ8+nafAnGLGKWZNf976MkseoIoE6MFxs/Vl7WqW7E/LO0cx
	 VcOwRl4yEGJzO5ZOeY/DCv70uFrktOkIIjJrLe71ucpWL+sHvpRnanCS6RvXmI/oeC
	 Yf6DXAQt7yGjcYuOXxWDkRfhed0JIopLe2ONTY/BcguG7ehBtLWVpELd2nDE3Z7qX2
	 501cfD/7sUhXV7vrhInFtcFOtPVx2irZRB3dXh7cVZmACUyaGmjuyg0njTZB4doBRf
	 GG1bmTTvpokM1f/zCXzieRMoX7R99EhA/WJgWuBZjC/BCGq5IiqPpFfEFGnczrsZjZ
	 zCEM2uMPuLX0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5ADFC6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167880348580.5748.17304471533185401829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c445a4056431b455c827a84d86f8693f5d5624ec77318255cabbb03ccb6263e
Date: Tue, 14 Mar 2023 14:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678803485
