Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242505232
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwYBDjjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E9DCC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704515896;
	bh=DiexsgSKyTrzSfhTLJj00MNLp4MhMMp7Udt4CZ/Fz0I=;
	h=To:Subject:From:Date:From;
	b=iwYBDjjm4fCJ8EE7+yFDwHXWCmRIwfinnwsD+aWDu3dg+y48AbC5EotCqn+r06UaK
	 JEQWJOlbJyqubo9V4pN1wKPTvalUvFgdTUNjTLRsdiMV74DXgdGiGgBgRVlJqlqxsV
	 PdaIVEb1MXugcIKs5+E3nwDveekquu8llTdvHgZxscNmthvOvZhA3no4YkNg46PKrp
	 AH26j4bncSsjZ0gDoTZu8VIJvIrCVifH2u4JU6vEjpM8gJOueugaNEm3O/pvPzx9Cv
	 wzPMI23WQK4EgDscxxSzWSOLV3rm9mTN+X+IRiUL5b0KZGdFwD3DNi7R5ctA1P1LRr
	 bxZz4ibymrNsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6830FC47074
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170451589641.30381.13239158499105829570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723f2ae858c3b6966b07d23ec34edfd451631445fe1173744d29029e1dbe14c5
Date: Sat, 06 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704515896
