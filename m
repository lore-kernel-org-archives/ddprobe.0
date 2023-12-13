Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D817FBA4
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ7iX+Ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7308FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702504696;
	bh=Pyi8POjvz8rt//jS9NGB8Py5uLNTozUo1dA/6Ipij04=;
	h=To:Subject:From:Date:From;
	b=UZ7iX+CiWpWpTqCWXH9K4l4OexzQHzeDEaqyJWVKPMWgVXgupaIRg0o+qE/JPBEQx
	 mos59sLQjW2WNNzYLKR7DUM4OVVpJlr4TfLTYbXhT+SmSZDBFzf1Ag+N+1JLfCFf3/
	 svXDwfjdPjfz/U95nQHbApHuf9r3CbGlFNxJ5FXEFKgfwHb43SLgV4cPa29YGcCTw5
	 zo5uz4y3RsBqnh5WFTli0irSXUuB0XIaYfrjKvAh2O7Vw221fKihvHesukiShWKEBJ
	 kyS0zpkDlFgAnWJQXsS39/763wIlpG4bdx4Yq2Lrzr7MlQvMaqadbv6Ig3qChwAImn
	 hW6Xzdjpwebaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2E2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170250469636.5502.6788388029313892733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c04da05401c4c9c6a141fca009c2e28a29d792ca2c332fb2052876354d25060
Date: Wed, 13 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702504696
