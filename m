Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CC02915
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BDDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671786687;
	bh=L7AkztcaIAo77GAoiYQnrPCIFilq6ip52HiQjOjMAyI=;
	h=To:Subject:From:Date:From;
	b=FJm3DQpjA2tLirTkU2zsiW+LK2PRGPnr7XEWpnXxpBEXENUV4HCxD6ZTC6x5ClWjJ
	 VARWxTtTIa6Oee412Bo2Xf3ElkpAv73sGQ69Bd1B+0/m9WAIvgbDE/WhQPLAlOU9+I
	 +wNyi2nOBHoDMrCH+wYRV2025R98x1bF9qjclsYuP8SHR7vGjjUA8n3Is6bhJmk7Zn
	 5tFrIAFx+SGSQGEhOOkhWIzQ8YqGRDgq08QZnwNa+vIrLuW3gIy8NOGTrqCKrse5MK
	 T+fRR78rY91YuRH8rp4LaJer/em86YiLyoQoTcgEdztweO96BQhw8uWXZ4B6MWxxyq
	 fu5KS5YQRmcGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A281C3DA6E
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178668742.17289.2992665506933339752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9806b05a79cd5b40a9809b03d951d57e8fe9377722b355e80b5d689b5bed7f02
Date: Fri, 23 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671786687
