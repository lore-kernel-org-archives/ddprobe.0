Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57F41851
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E42C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673928687;
	bh=ZXzX1DJFxZyJ6oR5bDeQLgwZgkq0jIkti8j06LURfkI=;
	h=To:Subject:From:Date:From;
	b=W2vT3IEH7f3xT6J04GjtPzXpkqLg9cmr8TiFBiVtX7BH4AvIKSXp0G0ekAXdsMWdW
	 8Kpmi6Q4CgEZvAsnlxnS64dIgktZzTcxFGd/jRvwA74AplaFrkp6sI6saiMc6vBdLh
	 S+jvB7YDhbOWpFf3cbTeemXKx5f1AWHu2dmvIxfpJhs1czBRTwWOt2d0FnX9jF5MKT
	 809D/XXxPOQIDgIaL4VznBc0IZ2oKYWhrmh8n/w2rLRsaZDUaW33Dg2WE2nsuMDqcl
	 lmof52viPUOgH+vJhU2HTY/XRXjlkW0XJ+lnQlX4BHvbUKKZrLdZBa/vp3Ad6MYFAq
	 9QtiqUsm4gx7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 664B9C6379F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167392868739.21928.10220121654724141864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c678d44baa9933f21be761b455984b1838a396baa622d3851f4d72eeddb34f7
Date: Tue, 17 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673928687
