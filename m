Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4C71C06
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98727C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672303287;
	bh=2vhVP4Rg0QiCuTLVOOxxOnpfj/yx1Tahcv1A5omFXbY=;
	h=To:Subject:From:Date:From;
	b=K/XYnYSM9c0LuCTB/awHJcZ0kH87EsWwv+qCtTgBKdAV4wTXh9jSViZS/X260hZRd
	 07xBQarFcsbDNic3TD9ilEf1kR2dGMuBCWiXfh7EMvQpiL+Yj1p/vUdTInCYVVVITy
	 OIkxP4vUGTa2hk+D/ZGg/c/226Exl1UbxcNoApti4uedkuh64b5ZAi4/WZbPf2Nu/v
	 Vym/KbbqkEwox9XMaGAZoeMoSCw38bFUsv/e6toPD2NwgUw6RNxv8LhqE6NSEVwxp6
	 L8j/OR/m5w8c78Y0lSotJuDKBJ2iT/sXcpTz9X7qDJL35v/rhjXkCEMd4dNO4HusCw
	 jaM+9Q94M11bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79154C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167230328748.7866.10242630960559047217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcef45bc9339033db8f253d24607e08316ab241a88ea990a532b9240af5b6c03
Date: Thu, 29 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672303287
