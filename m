Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96820A20
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3C3C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 20:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669926654;
	bh=gmvMf3SjnjJw9qMfwa/GC5OKBYC2eBr7+mfV3QPsJUA=;
	h=To:Subject:From:Date:From;
	b=r5/4Fe2l9L7+ggrNC+PGxS4s7mio2X9JhRf1mLLQx0IdNRspR4Lotyra9jTQr5DZh
	 6+/mQHWYFEcVNdHtV5c8EZAzW48zmKc3LsVDtTYc6XJYTAyh2tqoS0Lkkp9w8ucR4c
	 8Aqs4S6TNdLjZgEQf6xKTR9UAzZC1388oz45qvMpksuXQXs55drQA77hkX31w3Exlw
	 hFgXuxCSCS4yLqjGXNjvb/8DN3Y50lOfbeGyCaieq0iU+nJN9nnkLiyffKLVU4/9NW
	 r15M7/LPQjI5w7R+IfB5GUoXQnf3bZjfe53d3J1DucYs3l/9unBcfzUoseXVpCN8F4
	 Vn5B5IKiQl8Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5989CC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 20:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166992665435.14843.6674339009710581690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7165619ffd9dde0a656e0df7cd049d7900e0394ff87189a98f787f04c6421913
Date: Thu, 01 Dec 2022 20:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669926654
