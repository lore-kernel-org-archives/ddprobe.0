Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5EA2F3D
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B619C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671377487;
	bh=CnwNQPLRGWlGB8ebRhA8vLpoh8cmJr4ltvCiF1wy7pI=;
	h=To:Subject:From:Date:From;
	b=L3sA3CX3oB6K6ghdMNT8E23rNkAPdUxb6vXKhMErP1wQ2cLVIZY6TrAsXps/VARRd
	 HGOJbOu4wyELJHP5CUDova3b/MtCgaTvEvCytbIiLyftB3memi53Bn8MR4vfz0DWvb
	 9f7dQ78z1HtQhw5G//xEsPC4XiTxWkne1vfhEKmfshjshkwjCoXUAQI9030Ufxz64u
	 LeCZemghQmVC8cPhQCiLysnI0pCoA0jY9A0yekmC8Dpu8uh7n1NIqxwNM1kT5eFhzA
	 fad3Jsvlpb+bZVlGeuo9UWsIz3FJl6VTnCcPHv4b97zNwHYO5Meu9s84op9BgAIRTM
	 4r8w3J/F0v/HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D1FDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137748741.32610.11130445255098485087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7379a864f75b18a49d3406c24d4d911db75ea9abfe608ca16c81510fe780aff0
Date: Sun, 18 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671377487
