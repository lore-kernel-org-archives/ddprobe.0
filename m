Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73DC7B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73AEFC433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668321054;
	bh=xmxsSIvR24KZ5yMpAR48csivzh1yf4vz3Ozt2zdJBbw=;
	h=To:Subject:From:Date:From;
	b=j3CL7fDtZZ0AjJWA0JqhXTzJPCTPDZsxk07p3/IcC8WE6w8AxDKZn5kol6mnyAArT
	 fsxJdDq3QNWc8t5YcPmRlSG5/++Y8ElQ2Y1QoMcE+QrOzhU59kRATl5fC9gYWUvPEA
	 xlQ4BDRo0h/c3+K5aDMrpmKBpT29Smpn+b+eyB5oYFht8VjzyNuOqg0JO2jgCA/zmf
	 lHArfTqAinZzFbg1zF7b0IWXTUFy2E8+5A2MKIKd6eHy0kP1D8S1Awp9mrga23fML6
	 cjQPXOQYsqSrK2ravMylBsxOtJvZ6QDbWaY+nlNo7krHwkn3mmFNwFb0ylHlh/hUzi
	 //gAHge/CVfBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577DEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832105433.22480.8560974426724528708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cb1e1cbdc7419c11d62b0a4bde110ef88ae2e10e2a3babf21f557f19e4f978
Date: Sun, 13 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668321054
