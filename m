Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BEB23AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F19C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672600287;
	bh=d0F8nSd7DEiY5UTKZTV4d7itsEKHs4sCi7Yo38EPDnU=;
	h=To:Subject:From:Date:From;
	b=VStfg5QirmapuOI630VVzLgN5X3Y9Q8gUoXPYeaQwyoSwfv5x395xLpc+c6Rt1Jai
	 CUgNHs/kq0IDPpg6V+6+mwVcq0c2/MNx8Qa0hIGrSmnOT0JA8woQ1wAizz3DwpPCqi
	 RoCHJDoV/Gd76gVXjMA2JwznDujLTglHmyUjnX2AUovCOKihCb+NN96/ciVPwxmM1j
	 zRyQ3jxcHxwl+K9peUimDw6lAvYBDItRRaVdPZGZJJayvNLXpM1jL68c7FiuV6kOQu
	 Fc+yj4eBz+sCcgb9JMX/rBS//z9WBvs8bHtXjXk+oS61SbwxAHc9FOXsgfc7ZOLLdh
	 N2/OpLVyjpzrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647F0C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260028740.6448.12646540777923964687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b73e9cde24819878e160bfc8fc99c50bf714ce87e29f3b8c607f17fc2a2cf9c
Date: Sun, 01 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672600287
