Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD26520F7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E39C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661790652;
	bh=5UlrJ2PoTmRuLvX5/bK7r6imS/AflTYa4A0+0e5OkLw=;
	h=To:Subject:From:Date:From;
	b=O/wnbkPt3e31Rew0THdlqzdG1TYC0ojjWd7XL4DEVKP24hp1tUqZtsO9YbkydbBe+
	 nRdfyP00aiEk2+sLSKspv7auJqT2dWHIToGFPkcmv3FX6ocRSfi0RBmb+L8WgKPJJc
	 Vjm7VA51Im9Nf69mvpe4jdC5NVO3u65iDUy0zVSXQWJzg8tA2eCF5PMzfyOeXnuE07
	 sdQt3fhakhwClKXNRNKvExyHm+YzSolT/0ptPVu4gqQHhZy3Z0U7ENy2zkhjhtIcZy
	 g8zRypU0pX/WRnRuxQj3ZGqj5Nbm4uc7PXFNmT3lXztLlHUaYVqTXT1HR4ohBsfq7F
	 gUWsDCLTWUVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF7EECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179065244.9810.17706841171320426054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29dbbee6f568ec4a6045b2462e0f6904d07a5c0e3a2041f441c036af0818cfb
Date: Mon, 29 Aug 2022 16:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661790652
