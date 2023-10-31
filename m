Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156F8208B8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZT9jkCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9948EC433C9
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698775696;
	bh=3GcEeLpGN40ouideUh7+VikWOjSnQNwKX8S6jtyDoA4=;
	h=To:Subject:From:Date:From;
	b=dZT9jkCh9T0WtOtmz1c5/yloJgWdMHuhYSE+qYbw1ciaaWw2ij/yUJj4a8W2uCt1Y
	 1Gk24GWdrbuTNRk2mpR2FbNQaKO1Imt3N7WnxFoWYBCcRr9/WYLh27vaGy3WdgnWXH
	 0iMVc/bfI1ep7AKEcJlJ86lHcap42KFKqyiDf3wGL6QFgvUwLgTNhjnS4eALsgQhhx
	 CVogd476hKThAMcxLyysMYuQEIUyZ/rg5w1lXarjt2Akh3DrrzL2pnurjcS59bO5cW
	 jAhjqo7LHZwEtLIc/qBMzztsP08qNOf5IZGooQmTfJkYh4HCEjpwN6KYPfKXcaf2qV
	 9cG1W4w0JM48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C34FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169877569649.28628.5418085643191301558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2304a9265a334b999286a2656900700a502d1632a5f323a694622dcdd1aa8a0
Date: Tue, 31 Oct 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698775696
