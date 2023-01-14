Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55EF62A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89912C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673657487;
	bh=Wllr1w5WYim5v2l3TxZ7MafFGQD+crDOAddpE4R9QvM=;
	h=To:Subject:From:Date:From;
	b=IhWdMN/S/4n94CI29iahAuHTUg4YjuUWbSTyTcZ+SYRrKLXzd+1SouMsfzw1BKgpX
	 tMwlA7hoUlA+/lwb+ldeegeLkjTrjNZ8XnPxklOgZjoOtaDEMpCs5EtbVjnJdeEr83
	 O4c5w3D8mC1mh4HTN8xPXb6cwRFuuBUqMumCVpD5ADHZJZjoyO7S27L7A9EZwOcCxl
	 YVx4QMB9a3vMu89GsGke4d+1AJarEcni1Z4Z58AgwKcrlMg+OENkJ7qcRXIdsSBQuz
	 CCOCeL6vN/4Q2ctbqEZhrPXrYG+nS7hCNRYWlVQMNLpwWPXJXH87VMemuCG5ELHVdy
	 3WLLePjz4SAQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABDAC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365748742.29889.2719351885741378978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b324aff1d1e85488b4140af683c55d469f5667efcaac75bc7c5ae1cc347d306
Date: Sat, 14 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673657487
