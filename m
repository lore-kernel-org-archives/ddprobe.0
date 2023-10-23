Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB846168B0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0LvNbgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F412C433C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698061696;
	bh=AKdGYiR3PluOXADahp1to9/3gM5v38WbwTsaefaNieQ=;
	h=To:Subject:From:Date:From;
	b=A0LvNbgz6TzWdfMu7pLhiKxDmGkygXLI/Pal+0lktdWt4rwVo4cZ5N7F6eZjzfGKb
	 C/2VoFar0rXaDa6G2EFR/1IwnzGYAS4FObw8mSNlJffD1on1ghLqFdQndILHOzMIw6
	 BtdUKVK1f0vGRnMmea2CNLpI8hB1lRHHO4gUb5BwIhOxXdFEqe+3UmpVQsYn/1aWqR
	 jNa6k2Dj049b6L8sqCozC7YG37Vy5EIOypLS96B2Ckfr9L3MThP0zy2M8vWPjesWTI
	 JIK5l2CPqm3tbBXrMyM13mVeQwG5vFQSBB4TKDLY3QK2rmD85xeWvZYTfyUILZva19
	 kkGSqnOWv0/CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D7DC001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169806169640.6791.14096530801372906256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a7ce8cdaa5fe9f0c83e8becc833a922b4edc721edda4b9bbeec1ea7bbe99b9
Date: Mon, 23 Oct 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698061696
