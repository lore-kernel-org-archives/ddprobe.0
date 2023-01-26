Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D74D46A7
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 18:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE33EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 18:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674757385;
	bh=UpnmRsC6q2tQFdhvPMH1fWkzLTwBrWUt2THSPYzFmMQ=;
	h=To:Subject:From:Date:From;
	b=YkS9hcg85HpdQtox1np/i04Ikl+V1eT3n7rG8xweQozmQtJMoVoVAeD7YfacUmUiX
	 F7nV8YBTFBGwbdxTg4//YZ77aS6dO214jN4okHPGt5Usbl7OYPUEh/nvZ6H6sJhG5i
	 ul7WADlfSk+y4Nkm0zQFyNQaY+pqWqB/3G76I44ZIF3HtDpZliLzUzVR07foB/JzuB
	 Tv1mYVasrutFN5g248PIfeeRVTSwl1igTEM3dsTPHeA1ED3SQNUxHZCcPcfBew/0H3
	 8SdXtnx5iRuTpsd+fSrUFpSI3bZJexvTR5g2Vx/xFWBPvHLJndoMNbY8wVwogoDq7g
	 dyEovXFwi3nhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E26C61DA3
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 18:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167475738573.18770.13530147078798187205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a9cfbfd83aa9db2e22d4bc971212d81274e574cf1b4571b5aa206ed17d58e4
Date: Thu, 26 Jan 2023 18:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674757385
