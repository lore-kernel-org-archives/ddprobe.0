Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5C2D312
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/pLXE8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BB0C433C9
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701505096;
	bh=3xjqXExDuo5gM9H7i89DN9bYUJgi2wzAIUZIYfU74+0=;
	h=To:Subject:From:Date:From;
	b=H/pLXE8xPhoVlprbDcKgR0SFs+pFuGXiRw1yz7Nd2O+BErAL2cvlFIZClhQS2vj0B
	 g+RvjoD4LBaMjNH7cYb9RpMjVsLnTg2grofwZUJ/eFJXMCU0qHDejOi9QaXFeL16JC
	 7Xex6eI06MF318mNvpWcSaqlB+N7JvAaEw3rKgA3rDSsB3g4/MZS7KJftvDAp6e0Kz
	 tVe05a8CGRoUXkJtYRvpYD0cjp2MYy+l3+nGe9+owGqQm0vtYdGsS4MXimhZAQ7zvL
	 RWgxSqgCSDWy7aCgM5Iirc6eqjyX+eC89jvVYCFsFsZ63+FU8GZJWrqkgdltCJuNQu
	 Q9TyjlnXxgCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C82C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170150509637.30261.8477527275250480685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42f901b3209b0bcafe764272303bc04561093a0ee1443f6d37b49dbd3b94861
Date: Sat, 02 Dec 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701505096
