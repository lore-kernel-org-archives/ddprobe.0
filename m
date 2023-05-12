Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3F624129
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD55CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683908705;
	bh=0SR2NhHni9fSL19IcENeirMTtpZmaiVSvLoP29iA6zI=;
	h=To:Subject:From:Date:From;
	b=BQhojEZD8YZdD58zpASEMgVo5UFHs72EaSX3q4EWcbnwARbtgAYUcR1ViJlsUGii6
	 IPWjq6wFKmGS0ZC5Et+dBb6MkSuVDrr9DAYIp/kkb/lLD9z+c7DdAwtXykhMbU0pPU
	 RJHJXxHEJEvaLlfrVoYOY2EUcu5m/TJ7Zul+pRB7DkFMywEhGPNlzNugk/PBSlYZiN
	 ggccN2KRwROKHCNGa4QKt9KPVdsE1EAxgTJ4eqMtrhqvBFv2y1ClCyr1W/OQcVSGR5
	 EBPpjsG4SgPA2c4KaoO6cJcIQ7sGP5lhJ8v8phP1z0pZl5aWDu/iQJoSWH20S6L1Nw
	 p5oDoNzG8HAzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE28FC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168390870577.22011.11470474323515355716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246a9dcac46c158754e2f167929b24de09b4507d1c8ca4d4ec98f2ddcba4868d
Date: Fri, 12 May 2023 16:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683908705
