Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77E9D522
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FC9C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672933887;
	bh=bM2bF3GTIlqcdavgYuWY/46ggqCbBw/tURHUSZHPU2g=;
	h=To:Subject:From:Date:From;
	b=EbU8Eblc2DLuetlyr+OLDIwYOxcP7ynP6MyEqCCHGa3HbbVcFdRvLt1LNAFriSJED
	 lDkjndFFdcFs1DvMsHnxXdE8q/zFA6mp5kEHJZYlp/rgoGL7eKhEFjQjCnmItJum85
	 1sr9o1q4aGTTXBcXIws9lNHvsATrkrd0I1OcZkQAjDeV2pUXCkvCbWlMgbuL+0WEKi
	 /mA57B8zqxdfRs0HjVz6QHdnLf0V22cjAZTd8kfx0vWGMJLvet11GAGaMPutYAokP0
	 u7ThPpMI6RgeRQ8gi9Qo7wK9hRvAU3D50x7z2lsKzUTTZ176qjRkH1gX44N2d8Pj5c
	 f/rve7a5RmGHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6106AC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293388739.18022.12668463870184342604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a985e11168043eca69261a476927797430538ec774703bced23df041817a9a74
Date: Thu, 05 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672933887
