Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C28E18AFA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 22:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EA4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689890528;
	bh=wdDkKqZtUqqivI0bYnGXYjw+Qs75Lbb7j+PVPkKdEgs=;
	h=To:Subject:From:Date:From;
	b=g6Bg/hWzFS0CVNKAudk9aUA+8Ls8ewa90dDjBgrRcqIQdxoG6y0qdUT9oajul3KCM
	 Z7ZEJoH4PDzAmAVQg3ZiZ6wDMmLRcDL/BZcTmTaPfMP8/WDMUxho0t4Kw0354xfgEx
	 Wa7kBSjzUAwBOivuzcbaqyDNx4ErIn3m2ODEW3xMTdTfxj/0g3ADC+vnI4nVfycckk
	 7OQ7eEzWNQfUEyjPKkmvXhZa5mUOiwcOli6uNa3UeETBIcoTtOS8WvAQ34iEZZA7LU
	 3vUbfLRsfDde0rM4NoCy8doVWpgRtnZaaBQJOPmXiq1tYsor3rbHAjtedh09kZwyGM
	 wvu1Y+XVOF1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7696EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 22:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168989052873.22712.3484129305006354481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a257a28387ab9aa238d3cd5b85a68d320c6ccbac8248d34b74c229118fede94
Date: Thu, 20 Jul 2023 22:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689890528
