Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC441BDC8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMTGb1tf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78438C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705413496;
	bh=FzaqyKGMeht8BJGeSWvzf/7jCiZ8hXY1xNaC56s0JcI=;
	h=To:Subject:From:Date:From;
	b=HMTGb1tfFs6Sh0I7w4ZZJgEZtfqlyDsvwTH1Xy3L3Wi9E2Gh9rjHP8ZtRxmnD9yBo
	 mIIf6PYJvFrfZG9wvbXgZVXVkXRDrrOwZ0jr239TXhRq0F9PLfSR3F3FavdgTpcb9C
	 R2S9ft8xK81jLN8ELfYlWNjXPHYGWE3j7pRNOX+j7ZtkJKncOwj+faWMICc2/YAY5Q
	 c0195uF+uBqNaaFyqAIGTr1K1bH46FJxx0985ujPCNFQLfUzKwr1QhKYYvrSHMpZL9
	 Q9jezsOBe/a6t4QxuC/uAMgWTZYQw5Dm7+WfqnOF5VHQHa7JFxDHyY+qLQw6QZftBO
	 kMLa9j+67IhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF6AC4707C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170541349636.2167.2201283485204231531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680d96fad67a03d7e3e71910c42961da0a6c1d6e58ba29338407ba0edb4e4263
Date: Tue, 16 Jan 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705413496
