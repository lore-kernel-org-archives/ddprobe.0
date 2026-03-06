Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE42432E6B8
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772799893; cv=none; b=EsqljL2V1vb7dKTSjmg7H6Yfijq5mrVYFg3BcpaH03ab5Ftm33gFA1gcaJQVvZbW9Bf9ClE2Cd6DFuKTWiv9roMCiYHwzXQpUdf5p3MEWmq6ZSdPV2iAp9Hn5cJuyLTTI8m5kSAmeZRowksh5bENhsK5iFATXMsmArGT444jiU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772799893; c=relaxed/simple;
	bh=c1SSvqugYTxc0tIfXBuxTFuNfrr4j27LG1qB7dC+RBs=;
	h=To:Subject:From:Message-Id:Date; b=f1QRgOnhNxluPbZNRCihJYQmzhvOe/CxfdNkX15rfPFwqcWfoNW71LmfC9EH5ByE5F98fA99mPtNXFNVGz0oIe7NQl+qMjqWPzogXXFe7fEcVqjV1gx1x/MDj+vLecMTtQcpjWni55mZar6FuWVMH0C5TF4l2r0cJEiKi48NWiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+nQ9PbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+nQ9PbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A024EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772799893;
	bh=c1SSvqugYTxc0tIfXBuxTFuNfrr4j27LG1qB7dC+RBs=;
	h=To:Subject:From:Date:From;
	b=d+nQ9PbZJs0Sh9r0vXpR6Ytb9bYLdaDrtuvIjyjKxTbm8FlrWQzXe45JHgxSRZwVM
	 DZnfl145B7TpcN+i5A05IxQcrAzbYmoJfNOt7fHGIGSyO9F9CJnI9z3Jh/ebR5vFpU
	 d/mRVvAwAUS2Ts/mfXMTrHIIm1rw3wDiZAW0QkvCPlHCvu9y3+mJ3DEFjyFRc5IxEq
	 z7ia/D8eyLK5VjHVHvZb3KPX8YfLLY6b7Af8461EUw9mQKI5VGCfEPicdRwBMBlCgv
	 c+06StPMytq91WhbbWF7yiJPtTv7Sx3wG8lf6tW+Xlx5IeVmBeY9j810WlU5LDNuBw
	 CoahqxVdB8vjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD09F01832
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279989357.3516.12831057738227332639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe044bb9241c8ffc4ef97ce03625ab186365047aa540c3683f05afb24cecac9c
Date: Fri, 06 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772799893
