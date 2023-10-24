Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151232F2F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WocFcsUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C3C0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698126496;
	bh=dvO6n1yqck18Dhf7kuQf3J3ynfxw8QnTiUa7JWS5aJM=;
	h=To:Subject:From:Date:From;
	b=WocFcsUJz+hs35noADvQVXGaNbZJX/WQPwA12sc1xaCqrw6NreB0+SuYWInxjYF2t
	 QOJ/C/45AuXz+GVpR/9UzMAaJN3CtP2bGlzzhnj0tgAssysf/RSkehosnESCth5pb+
	 v6R3a6OWi/Ky+74yFazs3JvevelmIAi8XtuW9wpWy5i4LYZjcWVwcL8QsTwsNr/mVE
	 Gwk80ihI/lRk7CRkZFePu6GnbRlXRvGF+KgaVQpzPyYJlf/eMFdriZmDUYR7bF0E8Q
	 ora97bSyRHmbbYBcpnx81JKsU6CWWaiHfeMg2Jbi53nS+rOmlKqAzP9rqmlHJ9WuL4
	 KFFRL+xf8twoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6917AC00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169812649642.27067.9210533544137840948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59b9797b906d0999e94cfc2866374f93ea3e9c16263625dbef2a3b6907fd56c
Date: Tue, 24 Oct 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698126496
