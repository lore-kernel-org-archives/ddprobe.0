Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1372A2D604
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrcfUvQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8590CC433C9
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698216496;
	bh=3xfq3RSKDL6ZAfGE9mfaTN8fkTTIgTinR6+GRUd9r6k=;
	h=To:Subject:From:Date:From;
	b=CrcfUvQKEZWlgKflHudmpfLgnYExYuK0Joax0V0Qzb3BkeyhnreKkripqlsJbMa/k
	 AjFSCouqUwbwtxUph58yc0vKtkHeQGGu4ikZp7c8WgpFME4wvXJjt8QABCqKLz87u/
	 Sf9b+kQEwwB/K80C9+SjHTZ5vhdHei+qxAGfHS5+FaxblwN1kyVCDoL7/5TGnPDssw
	 Q1BjpyMBgXg5Zq1eOTvIv3Yo7WG5+Zj2NcWFvTCNBNZzPIwjuvh4qtF5HiWcC6jLp9
	 zkM1QjgfCXQMLaX1TLqJMhFsLmw/P1YlybQtbrZubizQij7/6tg3WvCqxAY9boyYOZ
	 v+Nwpf40VqHCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655EFC25B6B
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169821649639.28093.12116975571825269119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4905347d4f1c0a28fbb3e38a44a0f0e91a2506a70b09c2229ea8925fe5f927
Date: Wed, 25 Oct 2023 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698216496
