Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C96259A
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 08:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC94CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 08:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683879905;
	bh=T0x0wmTjMCdUB44a8X0bTQlDzARU1t090hvB71EuGcQ=;
	h=To:Subject:From:Date:From;
	b=OCzKgyOPBR2iZPO6tPK1yKiDT0+m/JFIJ8X2ln/9bmeA9FfRV+TeGcdGoOUa16twi
	 bQU2CJ2vvN2LFmbF3gc8gSJZivjtyoSP6MAy8A9OjgQkESZikd3VzXrM402LTL/Kf4
	 cX27TAgTZsHJZUW2T9KrzKC8RMEgKDrTe5OUt6tTL6TRLrHTpqE8MQ4XetP6wbkTVA
	 FWbyOC4NR6zvCmcQPM4tGzQ0uX7HYFIafd1yx4apwQW+m6Z2tZmYwbffxnPLFkxkSb
	 LBcNPveH8LUG6k1mqsXMeJlloxEl1MfRsQx2tXGErhxFXF8VQilrNKrKtWYDC1Uwh1
	 5rwWTahY8Lp3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE05C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 08:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168387990576.26672.11864627894707884608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf2551b823695c007ff7d12a61dcd4dfb3d78f48d727b9e69dfe51da8293f99
Date: Fri, 12 May 2023 08:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683879905
