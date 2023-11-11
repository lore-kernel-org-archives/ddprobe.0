Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9181B280
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sos+jgBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB1AC433C9
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699728496;
	bh=Qw/7cSZ4Xv8UxYUtBc8re3Xqv9V+2IN8IHYiM+wVk+4=;
	h=To:Subject:From:Date:From;
	b=sos+jgBn/xoiHbtFAzF7bEZwJY07cbmMdm7pHhlJBh/UFXtYi5rW/62Iir1+JOxmg
	 +GUXZomwuJTr59D4BDiawOy7FO8o6Vch0oO655dIGWHiX9eOGeAIv7u0s0zYtgp8a5
	 elIkWynU6XsgfzYf2ZeZnvnZVsKNHnwB9QeSBNhfvHLWtt9Lf0M4XY/F5fR7xqn4r8
	 u8bDK7UoVvBx/P/5HcsmH3Wdvd6TFV7d5yZu18dF/remhAvFc629TeSIrdF9gdOyes
	 xYzj0262h0j6JBRg3sfj6wI8Lpxl3g8zegSfqK0Okeu8HZ6CW+6lwKZHYfqAi08Fk2
	 yJKpEtfTV8sCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C37FC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169972849637.21135.1924318634471336534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fedb612ece5aaec4638349609f554980f151e8f8cc53d6f2c61236bea7e0e1
Date: Sat, 11 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699728496
