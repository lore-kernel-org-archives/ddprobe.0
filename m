Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD39156FA
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lILmbMcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86807C433C7
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698340696;
	bh=vubiyfGmSf3sSnx8OYRa7LE5FGMTAxo5MrzicllluA8=;
	h=To:Subject:From:Date:From;
	b=lILmbMcsa4SLUe4uP/MzpYfZ20dIGWURWH9M84k1q9Aye+xr1ck94AHl0ykV5xLja
	 7IT+mt8PO19btT/EHRU6LIMzP5s/g1sIXrD1omh0xRGHsfJI+Nfm6llPF6S9sULVBG
	 uBc5AS8BdUPPjTDiWGYkFmF68E6CTYIDLPz9oheRDu87yabrXDpG6VCQag4bvv/AUf
	 6GFb98MrIbDP+8cv/5almXObci9iEV6yFS8SYZOnmRJTGqmPivEgiAeWYndfj17k9D
	 kVaFDsomND5VVLFvkIbdOuzqR6c9Yn0J29TU5PeravO9UjQTy5rKc4s8nXr+9ZpvTW
	 yPYlNJEFSdRVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE99C25B48
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169834069642.7788.10262707402124544808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23d13ba036e0874b6bfd176da46adf29dd0c895635f39a9056161825597417f
Date: Thu, 26 Oct 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698340696
