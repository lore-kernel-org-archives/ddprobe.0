Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B95563B1
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC56C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685425925;
	bh=HLVn7GPYxvMvuniHciGl8D0fbK5BOXhVYadAnhqpuOY=;
	h=To:Subject:From:Date:From;
	b=qynKXiv0/BlL1vRpR779Mbhz+l/bYVFkSLBBa0r8OTQiE2kdBxFoT6oAv1Y/3ttk2
	 sa1bABsgq1TV8mAjoe8HkibXDwU1lVx2ADXM22AIG0YwgvW/aMrmWi4oM9BAk1GG1C
	 ihGUwrHq1zRhTeByhI3Xq30VqOtV6rcm1yAr5PT+Gj4hbpFAhc3zrxb0V/ZySfw5Bm
	 NkBPfgERQ7sUV/TrAoozlv16TWSb5k0wIa1Ou/HEwuDQEmjaGsp7D0Nw2fiNeq6L5Z
	 H1ptVTqKJLRZga7CBc32NPpEQpLWoDMzmg4jMXq5AhVJrrMtJawQKockfDZW5BpS3j
	 rPl7T9OiUU0OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAC7C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 05:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168542592576.25750.8365196522119426530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f23b9286f5e0f6d5a3c82c7c14675f7e2439eb0fa12611b31257694300832c
Date: Tue, 30 May 2023 05:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685425925
