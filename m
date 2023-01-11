Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB9F17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C22C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673425287;
	bh=nsKLvD47u4qjPgd/2xmGiSWH6gVdT612Q48Ny6lp4g0=;
	h=To:Subject:From:Date:From;
	b=q+DShG9U9+epUgO2j985hcD7HaEpHCS/GYzAMAxvBwtedUe62KbTV6rw1ztEoWCa8
	 Tg55yvm5tRQr5OsWIoHUugdEHmdMwMgPjKO8mmQC7ugeCA4xbvjqCR4RGrK9H8s2Pj
	 wZD25FGEFxuGXMGm8hCPHDijU8atDdaZl0TxcaQo5fHK3qhagg+LTaWIXsAVXRmxcw
	 TlGTJIB/5UdpcN2mhvEI9IpYLsmbaVzDZznGw5VrUJPmRE7RjdE7RGsUPGQL7Ipmh/
	 Jg+P0I1Zh2fdiODjhdoYq559VfS+vUkzfABKxjPateyEbXz7/ZKGX8GBknxhEPRusW
	 JRsxN22R08whw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8230BC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342528752.13461.7826195434990326648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8493a84cd82e42f6de4088650bc1313f1952f87f3aa1b2034c9e1a6ed3a6c88e
Date: Wed, 11 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673425287
