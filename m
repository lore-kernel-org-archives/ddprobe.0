Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207084415
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeyGbp0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8438BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700888896;
	bh=ot1+rXVjN0IZ0o87LWDQjr8wAkO7IK+nL8LPFndDdUc=;
	h=To:Subject:From:Date:From;
	b=IeyGbp0vTUDytSWK/F0jMcLgc81I1DmZfb1HkGhUvDf+osyTemzdhZC1f3IM3Ke0i
	 jKQtCsNdYKiKYSX4Z0k+6wGaYA5LeK8l3KCxCSCgM61pUBbM5uFYQ+hWyOGWMIYajq
	 Ts3sCh1prcKwAZH/30ibtvD35qP+uooKHxE/7vWCuLI+ahh6Cex2AWPdb5M3ebMDKM
	 rz7YV4SqBmggQAIAMUDbv/JER8bPj89RKX61wD5SBb9TcbeSkRCiFf/h1T+mpAHhM9
	 +jLMZZM2S1IIfnR+9IffQhwuoyLBiSq5cQdjluZr3pTy0lue8OneDNXaHJmLZTKIQ6
	 FJz0VY2moV3eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679F2C61D9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170088889641.14981.13712633073779293670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f10264a42287dec2b34cf949b3d58bb2c3e96adbedf5cbcf3a42548b78a4c9
Date: Sat, 25 Nov 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700888896
