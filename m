Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E931FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A774C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670825487;
	bh=6ACu2tX2wLqf/D0IYBxeCYyFVj76hoesre9Qh4SQv8Q=;
	h=To:Subject:From:Date:From;
	b=FVOVbRGDZ377M/u8gao1GXaGMOpQ3rrD6DJlQH0NZiVx+6//qCEcBQrUQzSvTF4yi
	 J19QvBiB+wJmfcLqm7Y9yVmd1o0t+AETf4ZKmCh8p5NYgQYBrQ8RT31c2MydRwbSTv
	 8aX10ZW6ktwuCYJ2JtOzXFID+L/kFlvbLH9/1OTY25N+f6j/hOWApX0RbOmec+rYh6
	 95rpnHaI+fGwTPMtCHmBU5Sv7K1otSQW4kB+TsB5jECkiCZEZWOWamE2YZhShE6HuP
	 V+22zBaCnDsrH0GYrXlIOUQr0sdXVz1Y4k+LyJI65IRsnotqZmsZ54MXdWZKwSPmI6
	 HplunXMO/0PGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6035CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082548738.18134.14758897432530953465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e1680a8229b3c0768a5a385815440d857cef1ad5c6eb29ba1f2bf0ca004c8b
Date: Mon, 12 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670825487
