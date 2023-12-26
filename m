Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3554E1A5
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGM1+Uvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83140C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703588296;
	bh=+5DvhlGTfs+AhNq7kiOIImBHp22bJYJBmiZzTowUMmo=;
	h=To:Subject:From:Date:From;
	b=PGM1+Uvj9rqS4KgJwq+90CuXmiDtbhHshAVvWDJb67xp/epAs7d0BrJI4Cn8Aq4Sv
	 uBrrSKj4sUJ/eO6+YFDwQ2gYVhkmooFcbSaltBDc5Z6nCEU4BlEBjqkxcQKve5CKPU
	 x1vZv20Gw/ISJ18OnnDFguOAptLPQ7yYofxAWkrxWOF1tuNo/jMulxTziKgywohbUI
	 3oEXRHPWAvMT1WRnXsymWk7nj9+a/Ntm3mHm7jR+2hbBXhNHohV4y0eruQpqSoFCoH
	 duHQaS63Fr5AK8lu0etc8UfTr0J4sUY5FzOkshuIkjoQ16ajz5N3/DXYJxKOP/37m7
	 +M3gHksrnoZJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676F3C46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170358829640.5399.17472179390362600166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aff11a8b98ce0faa7aae0db9c0fb293b1887d6d28d2fb8c429e11bd1cda8b26
Date: Tue, 26 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703588296
