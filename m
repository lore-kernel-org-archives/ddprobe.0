Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301EC3A1C9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763779314; cv=none; b=r6lPJZcnsjQePTZ7VZO+NVf0B4q8nw4ym0E+6EdFZ6OAnLb89hMNdx5VvaaErCVDchTM68M4A4I2jxQsMcy8WW1M/s5EQWcyWQaChsI0d8VN+6zPmxKLUNEuWzTAVIV1Ap8FZAmNfAB8DVyUO2CkJmIxBIYCHBbVy3YDSUGOn2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763779314; c=relaxed/simple;
	bh=jjfI/qsI/aQ9+ZYEhqy5wDh9nLrylfkhEddavnhY9eM=;
	h=To:Subject:From:Message-Id:Date; b=VP8QEc4SvbbIWtJyJuNoTDHAOFVFcxULcdwRHGOcoRWOLwQMG6dAfPeJ0lfx6N9PeVU+dZXYX/p9gfd4v03yPyqaZ/EbqJysRcHshDf/1Vjeo3icw9Cb1LRnvdbvrxRmRxI0SEPqb8z/mFCmjUS63o8AZhOsrog3m1/DAgbHv9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/zB6U4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/zB6U4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB454C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763779313;
	bh=jjfI/qsI/aQ9+ZYEhqy5wDh9nLrylfkhEddavnhY9eM=;
	h=To:Subject:From:Date:From;
	b=M/zB6U4KrcaxKZSkQEuYsdD9s7Efz3pmQxuoPHv0DrQREmcod1k3MRkwpDWa2Pau4
	 r+YcekGTKCDuyH3tN914fvoXEQu2ymC0F2KgX1zUgG8SfYfhKGWi8SpZRksSnluc4h
	 eQ5oypZgYZcfyckef/EAoqz+KLzDfJAnoyuTGoV1LbleeRpLDpIYhGA8Z453yDixhQ
	 M0W1xNASTS9aB+6BJScTxu/xCdsV0NgcNIa02UkUXiFv41WAnwyp9yrfAlG6f0/bRE
	 SQALObCRdKQ3jlsCYagkb0purFHVm+ZFmFwT5ckrdeRIQzHfBh0DrVZI08k/3yVDuv
	 Y//iSUJ0MCdTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AE1CFC515
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377931358.21690.10245657745186643937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf82ac7ee46b295207381581f145a356cd947caf0773967bc2cd909a345f54a
Date: Sat, 22 Nov 2025 02:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763779313
