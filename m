Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3D9657
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 686F4C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670485254;
	bh=nNOoHjvYN4t/aTxjHKJUfFkkOBUxig6uHspYUB49IN0=;
	h=To:Subject:From:Date:From;
	b=lYqH9l+mzJ4HUQEw6ULcbZMX9SnkFgEY2fmWnjJgFVw2eoE2qV95QMqV4gRpsBqZC
	 a8jxrHbKVb4QyNjNqq2H51EJ06ZyfZa5Xz6MPVcutV5uaTCrZ7IhohWZwkHKxUbI9D
	 n+YzDalqm9TZTULBie868hsUvvC8zWx3CPrNrVbelt+6FVSM9XFFc6dugvC7JLFlqV
	 vzOLmdyR2nRx36E7IbjgFr+UjA5BgWV7+idBWWS2CRersN1RAilg5fXYlYsy73j2j1
	 UqmGZ6v5Y4t28EBdKVZJlR0KfH7oTp5GW34gMQLeqovCuhDo8AN6o2VUweqwCK76zR
	 TVW/DZePY+smQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524EFC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048525432.5351.7721521485826197677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d411b7abe2278c752ce3e0e2ef82dcaeaf40eaa0d53aa7189763a6d5454bb7
Date: Thu, 08 Dec 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670485254
