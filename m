Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFEF1841
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F9DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664509253;
	bh=FeRgTjsA7R/cAkmd5L4m/5fBFbLuLLxQH5sN7fhh2YA=;
	h=To:Subject:From:Date:From;
	b=B+bKK4Z0MharIiwRZ1B6Aqi+j7iQ8Q6bbLAgk884FJ2MBeafUZM9r6HeDXwQaFfeE
	 fi/U4kb0dx67zyliETazPTnLnQR7Hyg9Gs1/bsYRxgD0w0ZI+utS1/JX6UvZOz4HNk
	 yqKzjQNDz1orGPKTKkOdbSEhp291yFbiDginw6rSAjuhtrAwnLL3ke04MpDJcsNPKw
	 +C6AkTS7VCM7KzGtaU5xzADFpNQ1F6OgVpTwX4noVlUJw2Z1OIHPcLtFrLmiSel7nZ
	 2WBFejEKjoVihw+XpnNwyMItmg9HXM1U4GCZTw4+MMznMs+spGMRXaH27lW1Mzsz1v
	 EbyyYugRrMW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F4EC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450925334.13092.14040981491966656439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a617ca24f341dc016b16b5ffccebb5b7318716d850f1cfb2919222bff6cab2a8
Date: Fri, 30 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664509253
