Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9F32912
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71118C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669246854;
	bh=D9gvKwjhu2eQkd06p2Hd7RvHwOpk0SnCZY30PwJqK6Q=;
	h=To:Subject:From:Date:From;
	b=e/Abz5mkBvs+Fg3BsZSHKBgAH9yppitmSzWdW78pb5NE9f+hfQMeJlA9IOwsXwwb1
	 HTFRWee8t3heGfMASPmFOia3A0+fr5gM6AF9UBkr7ZuDFr2Tl38TSGAvVzUdmQSa80
	 pUsfFODVPIKQI4yTl07C619RyBUUkiiAo+/fk/vcWGwwwE0XW3GvC8oUQNevr+LOx7
	 XQ1xIlMeD54filGyQJFLn2B9WUXjFcqAcjx33y49DgKn4Y98f9gLq1S06IPezRAGAB
	 n0brXtXiy5YeHYgBe33syPOZ820o+/maldGFW6XLiSilmJHTyBqx83iX7oa8HIu7is
	 KxUQMhWX2x5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551A5C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924685433.17694.6128446147644558901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5c875474fe6cb81bc6e3ec95aadc5372ef6645708e34d73d09f24ac0c34598
Date: Wed, 23 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669246854
