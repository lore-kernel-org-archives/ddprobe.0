Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF15E28F0
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B4BFC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664708453;
	bh=AiDlR4JvFAvyunTagudJ3ZdV2nut2ARljvN56j6q054=;
	h=To:Subject:From:Date:From;
	b=oDTTEzIYP011d7eCjwri5Q7Lkoni/P6YVlyZP9LQmPw9uaQa94mQlTQq7z1eoRkhB
	 OIlQWoVsz1SJNL1ds7R6DBXHEFXpSOYCNr3/+Fbei4N0UEiAO5DWFVstBU1eKFd06p
	 dIzjTVcb4OqbSzQXnkynWXC8olDMApXPo5RMnkbaPfqBrSsm2+f0mBgGMl/Niv3r5N
	 haweez9ZUH6pcnpBnFDR369zzrab2fg+A07UvGMteHKc9X364Pw5i3vcltt/Uz4JVp
	 BFg7ZvYzw98RZ0oiNYAinXu81910Qrh6hvLmpIe2Ag0DDfYtqMtLil1yBzL8+dDHsR
	 6O5QW4xq6tA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55951C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166470845332.25473.5688012813029970677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177b744f0c4eb0196acaa855c47970efbd418b2692e31c2b43633063142dae13
Date: Sun, 02 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664708453
