Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9D223C5
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0EAC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678707425;
	bh=S/g3XZzm9ZgOEHYA5buoUFtBGJJ9w5jCdJo+Vq6MssM=;
	h=To:Subject:From:Date:From;
	b=aGYnYJXAvALW6rOqx56K+3QI9il0HW8qh53J4wZGXsFFQrhAS/RyOraoZsaa/7Agk
	 5OkN8+mlA0YP2VnVVaTi5f66trQLsDtpZd3MZfubaOorUKJS9882mob1O9aPrFLmH6
	 greNTakiEUO7m47pc9WiGPzeS8n0s58XuI1uwvlnyNPEmovia2pSpOEvX9CDcP4K+D
	 PvtbnFejRLuPXocMKs1LNh7WKPjCGfSn3Uf/occ8uGNIxp6VuxElwLS2+Oy/62DLTI
	 HCNQzGIdSYqZobcgtWPhugAySN3+drVnRIuZPznppLQ6K26/xAVn+9YfxeUD5Iw0TO
	 qQoPXyGVvk5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43FBC6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 11:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167870742579.6999.608958116886415789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68e7d5cc0f2bc04a7ece219cfbd03e0f610246c1fe4d2331ffcb45f0842c3c0
Date: Mon, 13 Mar 2023 11:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678707425
