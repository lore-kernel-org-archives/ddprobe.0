Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68F01863
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95293C433F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672240287;
	bh=xjuEkKQ2kKKNTpzNY+ZcV81uz/TLpssYRVV/6CDkuxc=;
	h=To:Subject:From:Date:From;
	b=iZqIZwWUlJxJYsRKgHNlDWeMW5V7hxhPgaySbbVIoE0AQZhWduXpkbiU3opCPoe+j
	 P4YhIvQrCDmDOxwxf0GvahiYIWa4ZwHgTtoh1iul8n3FAXa3BTEGN1+ANNR0UHXMCO
	 Jnw4bxXnBtkJV+7NUKFBrXaWUz7TKTcUVrSs2B6sMuhVBTdyk/kgWswLRl2de5RZQ+
	 0jgNRIeXdwe3igpOWoD4Z0COVunEk8ZgwfFY8JvURV2YKQpRAqoIWz1i7FrqE7e0Q+
	 BGiQ409MQMqhAOEmew4gzYrUK40xcdNPEvV4gkY2mkoBoyqSn7s4bomTR+WszSdhQB
	 KTDeC0qNWCYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744A3C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167224028746.6426.7118174223673877483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b1c18e10b84a8a16f9e43f2cfd5a662aba93d7287075fcec683486764ef770
Date: Wed, 28 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672240287
