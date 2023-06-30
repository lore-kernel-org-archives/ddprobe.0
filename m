Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B2F1FAA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 12:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4301C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688128388;
	bh=Np+5p0FooBLQa4ll2L2MLuBbn2BJbVn6r9froZqfcio=;
	h=To:Subject:From:Date:From;
	b=Cmj5spMGXo8cD4IwEP40HGABL51Q2dSpafq7Y2BQv7Mb4QB7Kim6puCX9K0eI2nH/
	 poAdGv9fVkHsvRDTaG2FOXnnE2MLS+N1CbrJkQ/9a++Lmr8jSJIL2xgmh+xSSOLyad
	 YI0v2Mhh1WEt7NVmZsiiF66jHI9JkbwpMLy5f9DzbXBzPCBxW7o51oQCAVhRgfDGAE
	 KLpWbFWaXWGXBqW/dC2sBBK8CsV2mvYOCb+7aYWgUqS8UAR5/PVtXCYVF0GD/Xsxcy
	 gP5hqJ5zeVp05mImy4voZckbmuRp/lwJS8hvKgLqcyWQJW1FHyA3D5di7Rj+JYiAuF
	 FtAKiz5+rKryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1025EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 12:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168812838871.6914.15015979981951424236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd20735e497f961f23905b1a0f5fd2bb96f7a28b8ed578f46ba2174a4888ebe2
Date: Fri, 30 Jun 2023 12:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688128388
