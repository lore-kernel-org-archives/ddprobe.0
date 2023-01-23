Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42089EA5
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 10:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4604C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 10:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674469385;
	bh=i9Ub4Iytw12cPPw46PucbHX4hgwgq9lJl5LsY9XvXVI=;
	h=To:Subject:From:Date:From;
	b=JbjgTXhv10E5RNhp/r2OhA8nkCYkwsEbiA8Hh3y7c7yfrkPbLUb3c6hlpT+9OJlWS
	 KjUp3EdftR/zoO5apsTehVfIeZszVHQTfl5M7yrP94/OgKBJgmcjotYUdKCtNeN9Iz
	 TIvV7KzObgw9anS0xmrmO1egcjv/+N/6gBLZAw7ermU9wqH2rUkkRNGumUgj1VF3iL
	 UsKtNY2XU/lPmAEwn7b84wDxIavAzVpq4rt+xHzVbThG9V3lG3Us1e+IRzqhYC4MmU
	 TvMkK1mJFfINGI22TweZv+Sjqw6Y5SmvQi1Y6DkaMLTpXF6UwpowBtYlKdpdKVVmd7
	 e21L0XY8J0Zdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BA6C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 10:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167446938577.32045.9885387433373974728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c03ec917371094e94c0d0853e8e2cfe2d7875ce6dc9ff994058bf431457ac6
Date: Mon, 23 Jan 2023 10:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674469385
