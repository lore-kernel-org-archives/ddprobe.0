Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6300D11C96
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 14:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01F7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688998628;
	bh=Op2hfAbq65ohD1Vdcm9q5WXXNuMXVgZwIqZUSfA/jt4=;
	h=To:Subject:From:Date:From;
	b=cr6HO9//8Slkw2Bg0F5fBrPGcYr2o/CsFilXjPY5LOiCit0K6Avvi67XDxWXHTjKh
	 LczvukN5K6ZagZK0fqKyjKwYAkkn9RYwDMBJ2o9fTgVRAbpWPw5Jr+QrPulUT+1qKR
	 JIBlGSFFCXeVyz6/C5vC4S0/H1gdh1kKgzAYy0vfOAM6+N4rEg24/84A95bp+paxt9
	 t2DBkAuxhZmwVWN5s/Xk9UoIBASWeh3IRh9Qr/z1i037U5k4n7WxtECGvsIqlwiEnG
	 MF49jM/CiRy3OY2NPt9Wu+iJBGzcrr7qsAE8pT7K5zz6Eb3HdCMboKD1o01jXHqP9f
	 VyRfmhknCur4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0950EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 14:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168899862871.14233.8821384460933862693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fd4a4acaf0eac8a6deea51cce76bc2756254c81165461d2087e3eb497a7cc1
Date: Mon, 10 Jul 2023 14:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688998628
