Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA38E10EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C170C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666833654;
	bh=EfCWlQ2UZpLjvOceVn8dtZGJ4Dad+sP8PN3HA2c6R2U=;
	h=To:Subject:From:Date:From;
	b=P6ipzVJEv3dbrGlkuW3KlvQ/7iNeww22LeYoJ2bhmNDZavG52aaW9FXk7PfGWyD7/
	 xetpy3rAXWD48eywEiZb8ZcrFRh37dC6ZfD94GyoYahPKGwzjXWuPcctU0KE8vI0AK
	 +AcHHjVpnyd5lTnKq0/00neQ9t5ndgulUEKcztNzcdzPJdNKQk4OgBO7stzq5Ij2Ql
	 beanVZEFRqBwZ2y1l9OGSm0HsDq8/DdQi1/ffVcGlnL9PT8nlbRdwgRnLvhHtXJeo4
	 8WvMkmhYZV4fUXG2TgJiMxZwqxb6OJIC0PL0FASYyMknHkKQoJTN8k4agvTvN8IDWt
	 j794gS0a9tNYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A53C433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683365434.1042.14391082926712742689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b777c39bf590adf6d1a9882bb39a3ae2e8c73a466ebd421c51ea26060f8db2
Date: Thu, 27 Oct 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666833654
