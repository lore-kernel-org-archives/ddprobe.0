Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191B91FB4
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA31AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673872887;
	bh=70vpC5FEPrIGLG5DiHLwoXDQxpvFf79ukrVl4vtfw14=;
	h=To:Subject:From:Date:From;
	b=MkJTdztdytGuPsHlADNthUtkyEMCiIQpzsl6v2wAE25JBV1Dfu20Qj7D16cBPG+mE
	 1moGCH3oKrBPZkEoE+Xn6kmuIDuMPxuRK+IsrPLDx1RHcOhmvMRYWulbeIx1QSO9jG
	 uBhKknxhez2kfQ1tE65nid335yIxasatklLQ5Njt/xTdTHe++hFRTh5Xsv2a0r5old
	 Y0RS53hdhbiZeg6MRme9x5esS/pGGkqAs3Uq2W2Wv1DTzBVRa7adB+aXdUYSFSnSAi
	 JaTG0VHdA31AHwghywYs/GSrYOI7k/8TA3FATuOMyVA918CTKXU6Mzy3LOHRdck3Rf
	 gw5Kw+Wjqcwow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AF72C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387288755.1992.3389579849104971370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a926da3b9faef43aab24ab8ba6b923b3b2ef0d7a15534d0904ab4d4cf62960
Date: Mon, 16 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673872887
