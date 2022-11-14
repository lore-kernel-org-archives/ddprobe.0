Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4E923A8
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D305C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668417054;
	bh=e5wYDHVQv5EJYoxkHhaoBVPf60bQdCNNuvh7GnhXnTg=;
	h=To:Subject:From:Date:From;
	b=qzTR8dyezhm5ueKxzJLRMOJVL/LjnzxiQhbv4ndXoSKKskzz5obrgfRja0Yfs3zX2
	 GsjfFhbH9US1IBZH2A39vy2a4JRkiwsQJrRI1G+CNOxYqVHGDSNYxtjTkUzvV5lxdf
	 CQfXE5RvyV4RHtbzbcfIHZzus7ELFhLVE68743udVvwsk0OH/6QTtVYFflh/RfWo2m
	 NX1aeBt3sCVDgVUJ/vrOH2DpS4mVdOQlYc3WBOHZFATWhbC42wT2NRGv+AbzPuSdHS
	 Tn+4XvR0DCwg8fStTvvGNnZWeOYC+IhMi+SDr90hrb2ETaHMob3qd2mLNWZseEqlzw
	 I0iKRYk1XIAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53693C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841705433.7699.17607279467140405692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ccf4d7c6f66cda75fa76069c812aec4442cbcfd923db06cf428ba5c5f878310
Date: Mon, 14 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668417054
