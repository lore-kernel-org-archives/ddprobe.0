Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55420654
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 02:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F4FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 02:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693190648;
	bh=fNTh2l8jnAeGB0grDmoN1F02rwpL5TSivTu7oNa9t+4=;
	h=To:Subject:From:Date:From;
	b=qYzonahuvOhjXmBxrZJB8QmXdcvyWs1GGpEwws3xLN5q3mX6S49SMlFAU7SvjqQvJ
	 nfnMPWNHWzbjeFBAkvby2pEgn5IXdE4K5V8hcMkKJLNiU3Hr7rbqhnalFtFKuvlXe5
	 FD0FwsDUiyVFmgapu9NUuMUs7Y/no11lyP7JSzG/gZyJl7PPmNzc5G/ZmQsTQIY2zl
	 FOBlo/5iH3bH/ICNlO5emqK/BW1InW/Cx3KKZ+7fdguuXX+MmPvll/K1i8gu31Zdsy
	 HYABRruyDEYIwlDat/AP8Qtl8WAORjcLjUywvejCGs7pH9Lji0xOij9zMQewu68GyY
	 FyNZv+9NYllmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD18CC83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 02:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169319064876.21157.7408591628327294716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d16beba19452426f5c8ec47c71f5ff878953839d0a0d516abd14c7626dc15bc
Date: Mon, 28 Aug 2023 02:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693190648
