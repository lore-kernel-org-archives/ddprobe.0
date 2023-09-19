Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A3A38DCC
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4212C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695113108;
	bh=8vFFj3yzow03rwhE05EhM7nzBs9duo2tgb8Jhh/HqDA=;
	h=To:Subject:From:Date:From;
	b=JfBNJyfPiW0P5YwG6ScTfF8jIFMfsUwoAW7LzXWvfctGfpnt4TeQ6l3v+FojJt4BI
	 G64RVZcn06dU9CLcd56/vQAtabwFVrZqfQ3ZSuWyhU3BAmt/fRptSu2FQWrJTxu9dp
	 GKKi8SHpMTrwR6F7AhQh1v7nW9LdSqdgVHe1kqPSMULx7kA+zCpGu3N+k7OyNWUs2C
	 tSHsLnWR4QGDBZL7FrFVcnpyvNAJ6GHCcfR8aO2qrlAKPClCAFOv2SoC6ImMS+QO3E
	 8Us+ZXQqKKBMZJMeZZeUFeUm6kz+Id0kFYzzeH2O4Bcht60TYkXRZ4lI6FUwwNLOZn
	 1GT2p6yOYhBjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B939CCD54A8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 08:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169511310874.18452.5173959080212429900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e89126571ecd573fff9bf96d420f8262f6143653a909bb3426da8201e2f5a7
Date: Tue, 19 Sep 2023 08:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695113108
