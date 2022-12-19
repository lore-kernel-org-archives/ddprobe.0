Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CC1A31
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6F3C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671415887;
	bh=JmG07UYSElXYgNl9AclvwEpUnhRMqrIcfWoIPvAvuCs=;
	h=To:Subject:From:Date:From;
	b=W6XJB+gGrzIzNDXf5lBzyQ6/1WODx5bLaKLt0JwjrRx8zRkYuF+MfiQkJQ8XWAQ1l
	 e7gsqb/nlBp5R8y34Q6leC2RwpsFyN8C5XPwG7mq25InoWaYLNAN6d2rjO1vTpSsCn
	 RBlO7WmL2KAW+LmvX5cCXH5mgl6CRuss8L7K0pPSH3AgBmDKm3E8kwNnbQybocUsoY
	 AEkjcKxuJJK+iCuab6GmU+mYZmF9JnPtjBl5OlIp8mVPL+Yfxk5NIk18wgoOs9NGkg
	 ABnJJEQQyB6mDbWB4TaR7o4uqOGFAOwE/kY6rRbyFf4sfso3sIouvP4yunCWdrioly
	 h1C+TfbrAtmHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64870C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141588740.17300.8477197753208848164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5350399ba28f659d501005962deb9bbcc75d543fe2ea1de36c5c9f4fb5a7cca
Date: Mon, 19 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671415887
