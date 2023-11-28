Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615364F5E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApLQ+TgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87980C433C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701176296;
	bh=xTtfj8NccURo3+Hlv8MS/Po3clLIM806pa1z8HnDvUY=;
	h=To:Subject:From:Date:From;
	b=ApLQ+TgERgflAxcgWgSIBFllydgRUHClwKU1985JGSjsyLCiWvG9b2MdAPxiZm5NU
	 iNxvW8xe2mFyjcF+vZ8mWxI/1+KFCsOnrQtNuQViU/w0isLOTvgBF8/bO//9kMBHA+
	 u2+Mo1KqEYL8aD8yd01BpNHwUqPqxgBFG5/OTxgEZG137IS7H2HRv10kk5KarI9thn
	 Ln9j/zdXRzP4IGFOm8AG1KcyqvevtUwDGVl7Dmwn+ucpIaShmt5A/iQEIHJLfote6a
	 IvGtXwypE2gPCLBcX1qinDDCDlia0Mv03dUC8iDrpqLeNvxyYU69Q5njtjqXT48WBO
	 zG9uNLUdLiXyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F19BC4167B
	for <ddprobe@lists.linux.dev>; Tue, 28 Nov 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170117629644.6245.9912867329984171323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e11c553966caf06c5ed66fe0d12108d2c800702d0b95c5a9d1cb2958425052
Date: Tue, 28 Nov 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701176296
