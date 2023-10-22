Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158EF10F1
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVIr3aQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F48C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697962096;
	bh=oBDqlH9W43s0DFDJUccgA4ei01BC61LZIwPPovj+NTg=;
	h=To:Subject:From:Date:From;
	b=LVIr3aQyEEMjYMu6Q9fwi0/Xq+O+AMHulx4dan1h5zSsWqmvKQ6bYZi8wb7FCqsA0
	 t3WyP4pn0OofY8i3ygedSw+PdtEpEdL5FImJQjVVkURZx7GKCNNwHl83R9mIY5wmdO
	 1H7yGpff2z6dXDfikZlDjeSez88t/lb05HGxKtSAgqQBOD3FtIGfp6ztFu6FXTr501
	 DyDCbyp0QE3d/Ddb3VDB49oDU5j6MYcRHqlPvQklaqI+xde4C1a4vJiCzDBnK73tZt
	 /0l+L9C671SiS6Gwl3sK1LTbF6Tw3Z0hduSdF2ejQ+Wl+PO+1aXLM6CMA5ngsFsh+R
	 dEpQV0klHklEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64197CDB474
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169796209638.4565.1180935866644487739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60854c713b6868af341630b68f09812a9b20704deb12a5ef68b702ef9a0769e1
Date: Sun, 22 Oct 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697962096
