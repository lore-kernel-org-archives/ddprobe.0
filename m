Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD23A2CA4
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7169AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665663653;
	bh=H43aacIHZvAU547DvqOPKkYmoSmsEFow+6RevoolD1c=;
	h=To:Subject:From:Date:From;
	b=Lb0+jJjM0c7jk29mNr/fBwc8LRGGMoqMyCfV4aoS/xTp2+hn3SkL1xZqXe2rJIRv8
	 kyoUrhLmAdhi2HJWq9cnRxelfOGwcT/ekMcfkWg6/7o+qgCLwyts3MPgTvNEIU+RIY
	 JS6RXv+E5xLVm3yE8AJnSMaQ/SaDkftrgUYuYubWm7dtPzGvp+3h2yFZv0TYYUWL6v
	 iOMBnD4Q1gXVY6UYtbtdsUP6Q1DhQ03n1OBZGaZLH2AtLJIJ6xWZhCvF5ZZ0cNCTF8
	 dX7DGxv2mPMrjvu8devywIBYwlj86CsuDGaeKYQTrvxBeSYViM5pgqeTLjQ7BFI8k0
	 DJNrmK480Z7og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C9BC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566365333.23694.11220665563123103617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e5895dd9d39dcc73f4fe0ff5d7a6a9ef381cdfff06047d740613d8bc9566df
Date: Thu, 13 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665663653
