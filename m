Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32D14401
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 852FFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661535052;
	bh=5ZdxoAh5xRVsvCq2KmUMSSuKf86vdG5Hqu9cKqeefUs=;
	h=To:Subject:From:Date:From;
	b=n0vlgCN9a8HZYdva/vVQ8QnRqOG1x4lfvmBJkxuYt5JTBBBuo2rYFAidXH6dZcBOk
	 ypVsgshSaAO3nI1Dm/wxx3Q60HttATUtpf2muKZDRWDmoraIIGJhXXUxnJPh9mMDeD
	 zUFtlYqomaoMyqJbUYjXMZKhNuBuL8hNwzDegip7adn4ctT+Dpv1CZRPDisuWzNpYo
	 hwKZc8xN3r22fpVgB98FpXyGTL0/s+NAZIllBAJnBe6YnzHwgBR1DJywWESvBFLVIw
	 KQfJhv062pwCD+ahY8+zrbL4PgK+LzgVtR/Eng8uNLCaMvSNK6jZToIicilyafTz7b
	 uvl1ZmM9WKXxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7E4ECAAA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 17:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166153505235.13496.10316281106668306291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d77bd9d881c84c276bd6f9dddc1b2993f033b54841f325914128e5e2ba7826
Date: Fri, 26 Aug 2022 17:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661535052
