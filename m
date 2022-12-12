Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9E27475
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F549C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670887287;
	bh=IcQBe0QfDhVTZUvJ4mBjVq1C71HLjiS+RIb7v63QkRc=;
	h=To:Subject:From:Date:From;
	b=rnx3e8GsUkEK2TjKn8oUNN8uFxJthcRvqOO8MSG7JkXDR8yC+W+39QE8eiMkk1Krd
	 4VNdBVdUWpux2zdWml+19dJ26S5wRhEuYTU1HYL/q5gvnl1B1pU+beb/0Gam5RhLlh
	 7mJxHIkxMms13I8DRgo/jMgo1V6MHlkmc/nf4M7rvCSpM9wTklgwRF5baJEyye8F/O
	 VlPX+plW8OOwcEhTrt+V6PVCq7czG6InCj5rP17eNNkUAjC89AXd6MbMpBmnOE8w3I
	 vmeUGxVcOllOasoF6S7iC8rhRLvyCSPpf0SDXLRReT/u6o+x+bOo0/1YiBakibAn/B
	 gPAQse/51wjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CB1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088728740.13405.17123604499145219998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7dec2523be3b4baddc80de447655982d4402265996385f8b65a6ed24ec10834
Date: Mon, 12 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670887287
