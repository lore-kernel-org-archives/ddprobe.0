Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F302589
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D884CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689351668;
	bh=+y7qoJvsSNXd8CZ/e7Ahpz2jiaV38gKRuxnJEzsusEA=;
	h=To:Subject:From:Date:From;
	b=LH6YsCxP6Sy+fnmbiWAnF0a6f6Hc4qjR1QA7s1MZw5dNVTwfnbXiD9XOwduMNAuQs
	 9cjRxsafrqB+z8OkeJPiZ9VHSqETJ66m+LfDdYDWocvB0l98KXJWl4ke2/KrqTsmXr
	 v4jEpAk0L8983SdvceWOY9Ql1vMxRnU2ZJmO8AOilkmk1ZD2oXwYXzzKtOyBP3vd0Z
	 Nsm1L5bAQiTU5jKnNFtUPhTSucA/QqAmArDGJvQYSGWKeZ8YAzNtIc4dqNL8tUP/iI
	 yCAJOKhRcYiZPXPTmxESqAgGTkrTRB8i058wg1OOjXMaxT0J8OnTgfF7mp7uWsnCn1
	 XKq+hXmfjZt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDA7C001DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168935166876.8117.13997551328344513648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 080f0ce89e80158f86f59d18fe1a17761b42c2981d1f59155314ca65463cafa9
Date: Fri, 14 Jul 2023 16:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689351668
