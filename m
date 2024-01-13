Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8CF510796
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMkpnSJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79805C433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705180696;
	bh=rPJpc7wjb9JAXqH9YdJPOn+RTgVWtKXt6E3P6sinFwo=;
	h=To:Subject:From:Date:From;
	b=HMkpnSJSLr32OgFQZ5znnAdZJ6KRWQW2JTeAGWsnll+bVsGkE8A+wrG/CaYEEJmLM
	 l+otrSEdkGd2l8F1reVqGu2BlU2LdL2IjwE5pcD2LIDTMXcHNDzZ8qrPfEJyFwxmvy
	 OlcIKt7XdYcRcqnXIDSggm1eVEDlSXX29LgW9zKlW3OeY3l6jTTDNxw1VYlIMbwsbS
	 0qtAuCo6U3lfupBdA0fwLK6ggDm8Izu55jNbyJh4PHbxsWtp9JFL9W1bxMeW6p5kCD
	 3ndFXhCH45UoFt1BVSF/JnRA4oTTfuypiKaW1EEcsTubh6Yep9fx5/nvfnvpODah58
	 WI7wHS+xfb2ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E961C4707B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170518069637.31965.3333901954346771179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f699683ca608049b27f654e0dbeca8b027cac34fc4b2a2108df04b48f74e77f
Date: Sat, 13 Jan 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705180696
