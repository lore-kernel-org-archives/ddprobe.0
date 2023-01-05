Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11A610792
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993F4C433F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672953687;
	bh=mkfxk6yaltFHhQa3f+NjnRd9CeX8IoRzO5RMIRTsZso=;
	h=To:Subject:From:Date:From;
	b=NCjdiUkPO1OrSz+cnp5DvyMerFQj920r6bURUi5GO5pcODdoI5gl4D6dLScNj+AgP
	 JfGAT9UUIShC97P0q/uKTnvnc4fDp8WlxrNTZtuCqEGHUIJUjPMSqJT/096CHGfzgU
	 GkDbeLnPQVmezRNzLQIwtacQy2IW2Dr24PN7amcDvtYHhLCSZswgqz0iYLOceJwITb
	 3/DcGp9DazpUZ+Jk6DR6Qs7yXmpYQsY44QMHx34sJ52z8K4WLx8qR2263O8CAC5uhM
	 EKXBkm534kb4UVx1ed5Y+DcYryrM9+pboiAJ1AeQJpcxaoQ77/enWuYC1DavPpAy3A
	 NmWKfZ1v71myw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D02C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295368744.12508.10572346688443511039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c177cbca256ad03186da6a418730c0c9398e2e7e009317b56b540da784adc814
Date: Thu, 05 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672953687
