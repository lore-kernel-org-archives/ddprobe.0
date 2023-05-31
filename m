Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7061F3D3AC
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE0FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685568845;
	bh=MARqbMhqS6ZmFQGCJRh/c/tJVZkDdlfv4g0uLcqQKhI=;
	h=To:Subject:From:Date:From;
	b=NpjwkBmEpYY3dKxNTZ0EWhkC/VicPi/QJD71z5gddTgHuPnS4HwXyAikBRZeEFxKv
	 dQsBanwAdqxIlT7afnA7Lxq25rBzpW7pf357aEpE7k9mrPcxjVQWdiut56jdnIiC2U
	 PjMULJuBCHOAnsBt32j/qtDfH/X202dzjOtZBlK6foN6wCv6nkjETh0KIFaYX0MZ40
	 BEAyVSMkMyYiwtdo4YjtvfZ7Dr2wLuDAq6RUbeKmby/8dOSSTerSea1L1pQWYZz/DH
	 yEI56eVRXMLv1tQ9UDWYYkWGdDQcYssDKYP30/sdml7AmnWdpPtiytKhyfekLWsB7F
	 doW7p55WiFbOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEE2C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 21:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168556884576.9879.12563221465208693631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da34932886dc6763bf6cd087cd3dca4514e403151374da618ddc83dd46e8d80c
Date: Wed, 31 May 2023 21:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685568845
