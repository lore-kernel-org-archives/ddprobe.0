Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91712468F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 10:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1333DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 10:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686048726;
	bh=1VoOJUhT3/TtssmnZ2kZkm4JI/cHN9Jv6p9sfwQPonQ=;
	h=To:Subject:From:Date:From;
	b=SiKPr7ZuBVbtcDhDde7D1dX8JqSAnJouRIm3HEUPJwJujD4mB8itGt413sAsQNZmJ
	 NiTa9ZoYdDLvon9CykOmUuxtB5XAlARHB3EJUgBc4pszB6sZVJksjz7WEOn4b+AcOm
	 aSxzcwZLLzWC3KMPYjIWqSxNZobEVhoOcGvcdoJ+hoAtELrxbI8fq4pf5Vcvkm7V7t
	 yKeI9kehtucivyWamnOhOC7dHTtgcb6sX5Iz2tXBa/lDJL5bqjheeQ0PnuU+2e4Pe3
	 r3C6rUt1nXke0Tt3wEHFyfC1A2uahJHIUf9g6ru1WBfwqDyEvM3gg/rXnqnhxc5t88
	 /mJHMyJF4lc+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE2CEC7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 10:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168604872596.30996.6497247699345382280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a49f899b4b0f535abd2a66da5ec534d942b8c028ededea78ce7745387df4b3
Date: Tue, 06 Jun 2023 10:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686048725
