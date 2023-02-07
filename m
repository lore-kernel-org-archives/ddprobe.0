Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3874D20E8
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 09:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60A8C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 09:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675763225;
	bh=F6qIOn97/nujJKWt5Lc6bZ/bQ5ANHEKwmhpHODahpwU=;
	h=To:Subject:From:Date:From;
	b=Um7COg4uAfduY0r6rGFS8brSsmUaItFm5Jfhm4xxOqxeYx0oevtxgsuU87mLzOWA1
	 8Ycy6i6OqBx161ProCRr8pkMNNl7/TdRHPKoMfO2Nf9X3BjnDwTy20d87mMxMPuooc
	 UZr4ch1NEKTZ2cbWRcv5mufU7zR1w4TXLdRjrnXv9TKX58kJxi7R6nZ6PTdB5rJOTw
	 gtbAx0aw7pov2JJFwaEWQ8QpnWucpNGziDRbZqbiNmsRRn9xWz1krOj1SvsJG3QuJ/
	 vRrdmwftaQpHSecD43TMVNqTtIuGYgOTYZqIRabEHTnLZO4iloQBKVajoe8ew4vX9Y
	 aE//6ssOLqk/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8628C636CD
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 09:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167576322574.15563.7186923767438489734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12972e2846e4a912643b7cbf213262a8481c74fd93ef8d73607eba0f44b8a07
Date: Tue, 07 Feb 2023 09:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675763225
