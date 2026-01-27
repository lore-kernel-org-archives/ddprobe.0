Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D3735FF67
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769531034; cv=none; b=QUYvF+2nb8WMfKJ5ua2EYZGvfsC5rG397MwiIbjSp1JUnF+Te3BotVXQgBAQhXs52UvhUpsz/F8C9m7cs+T3dpktQaYjzj6oh97H5bZzYU7s0RQIVvb3CMTfNk+b4XV3qFgSfRfFAQtq0fJQG3otIoIrewBmHg/y/cu5a6BXQpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769531034; c=relaxed/simple;
	bh=1YmOf4HcxIRXO2Hs2llw/RJc6L6+NQr/SCWPp3OK5ok=;
	h=To:Subject:From:Message-Id:Date; b=BDDBAPr++h7yj2JA1ycP5lVucrZvza8OhE12iw8KC+XpkDp/zfDnBI9Nc/cl+k4C3Jv9+agCZK150HMolcGjUF5Iq3r56KOHYtt3VgbvosRNMDiGUZ3nO5LCoMQySmq8Mk61wNFxnpMor4bGE06WqAmKSWxPPabejCz2gG3GRBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNb7psaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNb7psaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D2AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769531033;
	bh=1YmOf4HcxIRXO2Hs2llw/RJc6L6+NQr/SCWPp3OK5ok=;
	h=To:Subject:From:Date:From;
	b=YNb7psaE2LXLCWYHa3j5T8cDWWWhq8GCDcWow7Y6NWm0Bgf34+J2IckDRzFj/CKUy
	 XKn8GsALnUBiFY6G3M1rzg/wvK7PUyOvZ/M9zfynrsk9nHIwmQO3tCU3nK/kqCeOj3
	 A+NVZRPW7AoNyJTnjhDfvIbpD1aHapmKZAskjxjv2Td37JfeC8ownU7+p7NqEmZnzh
	 R959Tmi4sh1g6AEvQfBA/BTtTy28RA0xRqQ04qxK0btSgtjaFqtflnksXFyg6wS5TZ
	 MkwgEeT61cfZYBdiqTEyZHlt2mNppcDq81nFFN2gaGs5Emt7aK9HKTQ/Ttdc6Anbqn
	 wH5yvxzJPHWAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9623FD3409E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953103359.7825.12160686199884781005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f606d6eecd97e8652cce914f85b35c72549edbe9806e611180fd6a793454e3e
Date: Tue, 27 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769531033
