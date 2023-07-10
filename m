Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF3714A9B
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D44C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689020828;
	bh=aCJkcQQomGBn/nxTXAaGFNQ8oRWeW98jVgzdQPKJSzo=;
	h=To:Subject:From:Date:From;
	b=F/rnWSajutqwBjzW2tEoYya+Hfc3syyEWGmWGg/eod4bmr4v8V4G7q64QR+zaO6Ve
	 nfI2294zpWcffHt2qZg4o1g/OmHxHaVm36I8GzynLeE3g13TneZAk9NMCxH4PziCSq
	 AT9RmMibiHw5nhvsyzlQOSm6uwQE5R3Zn9olV01FxXfBwciokE6wLGxrFvVFcEHuwk
	 9YeZbtCswwvrKDRvA8hzM+Lw4/GS6/xt18L/C0OXVEvMiMr1pKCEE4BmXut9nDUICU
	 0d5PlZDykbZwHflexWKCInmUnIg3ftTBl6FOvm+OOGn3bRDzLJUHbZd0m+rhFChTHQ
	 lTl7l6LW2YQPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D5BEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902082867.15221.3712761194753153353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a38f1c11d5e13fd06ed821d52bfad3649abdee48c5518781e9a056042a4f412
Date: Mon, 10 Jul 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689020828
