Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A351800D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 365C3C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687302129;
	bh=2Rpq3Kb1ejotq/xDdIY4HNt3S2cxFHK4yAMWYx7t5cI=;
	h=To:Subject:From:Date:From;
	b=AMzNuKijS6Qtexs1qDjwcNylm9r/cSdumMb5HuwRFLEcoYv/pnVrd/lutnbIeLK3V
	 6gO8kiHtYZK0A3CcH1ymNrjD8qYrO5VuwXhjgpz/4Z7eZkofSlhQ8F6oypRcOAXlfn
	 XCGgP4aOv41xiboiq4ekbVX7jQm7663+fvK/jiIzzhRNHJfRKumZ27py1SaBJgtAnT
	 zr2eSzxlF+w6ZkzajPN7VqnSnANblnjy8HZk1ZCZIO3x95XoYc5SvG1fPeTn4Hblj5
	 NbSTWx2RfYi7ixVWH5hXwnughQRNLt/FMJnWXI0U+o29gPmRqrNdrExJp37iyYAfXf
	 yzW123wRKjE+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12A05EB64DB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:02:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730212904.2587.9528144446628072436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d46e5d852c73e25375e4569b15a95713dd4188779045cc6943edd7087a8aab
Date: Tue, 20 Jun 2023 23:02:09 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687302129
