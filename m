Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EDC354ED
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 23:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsOHQRN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39A4C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696982228;
	bh=blE7L2BvPYfTr63/MLTdIdnV+O4qeVZ8aKvKbEc0oxc=;
	h=To:Subject:From:Date:From;
	b=nsOHQRN8MC6CsGLaKRs59IfyTD8lvuK0mx4nq1BfaFB3FOoO12VpYEhwn9P5cZCr+
	 NCFv2thz4Q5TQQ07NYisWWccg598ouhvIeyrl1IbgT7by0fbYrA3CziPjc1PBPK9nr
	 CN7zaV5LHVjQ7t5CxwYe9khEMvoEU9mV7ITn8fPpg9jEqOz6Ka7H8pRjtC5k4nhh6q
	 IVCdGjrisYNTRjA8/cadsXFH2LlGTY/7JyLGf7/fdYF1AU6DP1qK2aVISK8L8HfdPf
	 Ij2Cg+cpZd3+Atwf3WHSyIFyecOwxsNzG86iXvx8IueHAoa2CueKFT6eI6xyHI9ZYL
	 qkZceC9kgaDBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4AECD98CC
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169698222870.2194.2972114501989631172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd6c9728c6b01962cf1b9cf3d2a6cc4d4bf14fa2627d83588c7c1b8db44a917
Date: Tue, 10 Oct 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696982228
