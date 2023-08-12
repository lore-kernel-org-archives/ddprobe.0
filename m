Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6569E1CCDE
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 13:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BBFC433CA
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 13:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691847188;
	bh=wYi1Oz3qsJtZSFywwo+4iPkrXE95f1VCETwiBeN4MWI=;
	h=To:Subject:From:Date:From;
	b=vDdkJ3ygeAdLUDWHeE7pMb8xf1VUk6+EcBV9nsI97xckGCOCmtKjf3Y05ShzXRzOR
	 CbCwcMzj4F9A81twIrDEjltgXUyJleTeFKbBQPx5ll9OYevfNhwd4PmpchRmb400t3
	 ln2NFHZMRLDoo8ZGixFLrRVg4Ox/0g+CRrUfPC+9dUIofKK6L4Q2MexyLYOPXjCe7D
	 IOdhSBiJFRWx5RALq52xGxLLVh8Up7tKdmarKqmPN/Ze0cKtXtjmKsDjEYwiu/uczD
	 yBc45Nmyup5+gIIfdJi7X40VQP5um2vI1fxj4KeEZrfx+/BgMQxT/4MJ+ZuBTdFqak
	 mFCkH190T2Auw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7087C04A94
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 13:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169184718874.12120.11360321970307901515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfd3bb1184efe46827f8009dfc72bfd05eb6fabec4b69d9b94581cb1dd403ea
Date: Sat, 12 Aug 2023 13:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691847188
