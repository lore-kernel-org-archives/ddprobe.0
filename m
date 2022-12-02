Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C545A186B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 780DCC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669966254;
	bh=POqJXuWL4V+SkeA8GM19UX4vTX+GZv3hqsmQ9YpoW7w=;
	h=To:Subject:From:Date:From;
	b=iFjSIEzIT/jgY19Hr+fRR44Jaie417Jts6OIDtF2tdoZPd8pUrjRcmiBc3Uwodrmz
	 f40VhDLO49r8uCn1HC2/rURhzuYFBStAu/qUWAhJO7gWKvbi5elMxhytyFU8wA4HvA
	 AIg0rTGdJpaK68q65Fmr/DcR1VT71piDEybQkiz0wqyB/x4qoMw7Ax+dPjKe2+MIGh
	 qrpOc7u5qTkbflGGxhFESa9i02PVi12AwucQjKd8pL8f78gQr1m9ckJ1htkADJkr3M
	 XDGbmdgQhMuROnjok15h/I+DhB+WcxzaPB4/QXB4iJSaGw9sLfLiYDj0bUx6JB9YAd
	 gQP5Mlss44lDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB6AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996625434.24154.8837306087164593025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac02bba14f0d7550ad3fc309793c1151683a4be10d37813834908d00027d718
Date: Fri, 02 Dec 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669966254
