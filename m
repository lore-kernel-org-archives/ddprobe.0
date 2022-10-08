Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8B2A44
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737E9C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665211253;
	bh=uj8geLXbi9WRbusUCkmX1UAzlypFi73/CSY0BX1iGgI=;
	h=To:Subject:From:Date:From;
	b=uf8elpV7bM1wqwru1Y9AlzwbJd2hnioScPvfsOAnn82Rong3y8J5JMVcQ9i/Ev9eH
	 wcYttEHh7oETBUJWlBtP7gSt9tBRnQ65MH6DBXKPXZEskjScU5n78N/G0obeZz4zVb
	 r0c25XprzDQQRmdPGOV9uMNoeMN8w9OaZNLIHA3yWvOAkQdvwC/lvU6RS/rZ/dUP4t
	 NjnBtyDm1Ozvbc2AdoXUp3b9jGAqAKHQYlf5CoRAKa7bmRV4oCThpfccsMeAC48bF0
	 1Wk5eBXb6Uj7n0RpVRHsWR52+u7AacZ5lui1I/mgYrz/aIvg1jl8sT+qODD3RYNB/s
	 GY6xbl2SbYxxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570CBC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166521125333.2389.14892091914311407456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704cd1faca791bb72c6d06a79588caffc4c7ef200bbd35718e81c08b11945a2b
Date: Sat, 08 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665211253
