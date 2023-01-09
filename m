Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E735E2F21
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B850C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673269887;
	bh=JqGu9JjxfUaio4++m+z9PD+gTUFWyB40uiScndfgbr0=;
	h=To:Subject:From:Date:From;
	b=jQI8SVsyCVowZXh17ORtkBqHsCcnA7+svlvupGQsqQN7y7Ve2UnFO7QmsNxZH2DYx
	 08sCm4JAFVlRLUDzq2w0jj6gi6GbDI1ox5Si1p3y0Yxxcbk3CbUR6er5hfBYdp9pBe
	 FgVKtLy5NjtXq89CMh6sXGSaDp4Vz588ndrzg0W4wVJVsq9m2bULC46XjWOYJVSto+
	 lE3aUikMZpNqfIfRcMrp/1Nlo4D3urwtkq4YvjbrWQxZmCAchyei2rI2l0IpBtalzF
	 kgPnhWBjg6a0+df+iWqlPWU1YFxde3PPXHSScmmQV1Cg8h5Tbo7NKZVmSQ9AWlpZpB
	 sXU+V/9zSYcLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 701DDC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326988745.750.3273840426580563568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a225dbb4ac57d664f99dc92e510fd428f8444439268d44696ee62b056d03fdc
Date: Mon, 09 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673269887
