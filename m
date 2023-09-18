Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6187A1CA87
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B64C433CB
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695054308;
	bh=c344LqhoTzp22Xl0oNByMGXsU1qpx4vKNe0o7i0aH4k=;
	h=To:Subject:From:Date:From;
	b=Pu6PYZOfI6qeU6o0v8xvwF9r6jWD6BO0ntFZ4XE4myZncZOT/ODnSfYqHrSrTNYv1
	 jmK7OKK64Tj1i8WeVtS9UGqtSH6cpOSn8xZAZwqjtVC9lX/WIfUwoEkw7g2fDTvs65
	 49a/dXesImyp92lUIVj7yMVKqIu42EczqHuURpR5cxVY/CjGizwu+bsp0q7B3IEnIb
	 dX7tlpRHjnUN3mtJz47GgVBz25MI5+EqOW/WbPUPZGY49X5Bi1bk4atxOJmNwBc9Aa
	 QuKFloQ1S1Nu7CZBhzJMtqyGnfuxYoUOeMj/OwSDOq/NjxXCK74sYlEzeRn1UZsiQk
	 PnQIsSu90on9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4255C46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169505430872.26835.18063143604824544441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e0fb1b3fac00feba3bd284d88adf76163921b38221436763d62157ffdc16e2
Date: Mon, 18 Sep 2023 16:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695054308
