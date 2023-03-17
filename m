Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3836C2C9A
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 16:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF59C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 16:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679070665;
	bh=s7KnDitQbMWwCV4Iig4rxuFGSCYR2RAVBkdhk6IfxAI=;
	h=To:Subject:From:Date:From;
	b=f7yDOZbZKiSxuywIYmdgaPKiJHGQhdhw1B652Zhplj9rZ85bQZHgrje2tDCHYvgtK
	 l6h7Tl2HcnyQfKAzVShsSSeDK1A8a/Y4fvLr//PqB5axjJ2G2ZRw59lStcmRaRvhjb
	 KGrb/pIG5104vYmLour6nJtFtXI9ZBz/Z2M4dPlJi85GBmtgep8U5fRnHLvzR1KbhQ
	 CpATJSDHygoxG0WASNXMiQyQtIItkWDgeZpJYd1ctA7yzvJfXNsupx0CXOhycoZczh
	 N6G3jLx6FWtm98wKrJvBenLo2a+VO/onlRjHfpBY7cw4NaJNNg/d9wANLuA2gMrd4X
	 zhI1jJaJXyQxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C228DC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 16:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167907066578.22190.15704839235376060475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef328e0bff988b798f815a2a76bc1a737b5754f87158978a378f772636c3e896
Date: Fri, 17 Mar 2023 16:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679070665
