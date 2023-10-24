Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A19D7486
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+7v+LsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D34AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698133096;
	bh=2jupnU00rLwMdp+AavzZ8Nun0hkHE/twv13YFSUHWWk=;
	h=To:Subject:From:Date:From;
	b=T+7v+LsKH1RT7J+zi7XeTMmgJTqESUy5sm1WPkaNhYO0U0ZefRIJJDhzWZJXv7AAE
	 ABbgBmkK0BoGDMMSkmGZC76oP0CzB7YekJmZcsdvub8OLOmIoTkyNwCl8cAXfwsl53
	 +xFxaSFIGZRWb+gt30LXWsV/qJg3yVdlYcdjB/KBDAuSF/Y+EqiaRErFUa4C+ZGcAN
	 8ZkOYFND+cr/imCKV2Nj2zkxgOC8PXNrQU164DEQWUZD5UrAsOpCSKqojoiWZPh6pm
	 rb9U7MT8yJL0CriAVKEbhIaBuItLshVt+F7Vl6vmlolf3jQqLLdcaFL27DSp8Ud85i
	 LI4n6vWfgZE+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D22C00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169813309639.28041.8904054380414659201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f607afe401914a39bd9ea0157b8aeaff194d334803ef7339e3a66fce6cc701a8
Date: Tue, 24 Oct 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698133096
