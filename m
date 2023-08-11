Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBAD7F1
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8FBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691718188;
	bh=tCLBxvyGcBX0S6WJdNAc/711WYNV/AT6DdvXcIpUi7k=;
	h=To:Subject:From:Date:From;
	b=vRyS3aK542TjM8kLiyXCqvgbGIoHZAJGXkubiwpRp93stYgGi7XqPejtzEEwMZ1vg
	 VVdC76IRDkUwTyDsP0oFiHAOqmyphtd5Eql1kQ2Xk2QwWLOai19UgpmNFCc40qPVlu
	 uFlzjLDi0ct+UmxYqGt2hRoNWC0YgCgoLu2ZovQ/m6ZXJ+Nx568+ZN5MKXZQ6CBJI0
	 TtXMvsb1aaX9Na480NSMM+jeS+Y4lhb27qeJSnQHReRkHIw4LBmadhRn9uHQve/8oz
	 PskIOw9ciiJME29MS+dNkyZSDbP+UGMrtQvTa1z9GBh6bp4uMplYDj9RyhzSrkdt/V
	 eBLEfNCy383MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2671C04A94
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 01:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169171818865.21424.5546526464661785756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9630bd84a80fe39cd284b1d8fea3797d155f2505e709d52187a4eb4e4e69cedb
Date: Fri, 11 Aug 2023 01:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691718188
