Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B083546BA
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B792C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663449653;
	bh=zZQDVVVqJbJOfzvlGO+PIatfWgiwW/KbMId3motte98=;
	h=To:Subject:From:Date:From;
	b=pIUogNVOYT1jmQO9Egbs1Udd7g6/2G7xoea4/lhTzKRkJVQOG6qzOhU+8q+XONEOe
	 7B9d72xwpDZYUeLpjm+2ec/uSbhDzlQz7pNRFy3Bid2JIeYgQcpZBIMVBi8ZqIG7R5
	 aeC9AG6WouxW8EcLu/We1cEnWR8lgqkiLzkHP1gUS86TNDI7XQMsZ7jNiQu3fVO8zY
	 Kht4RkFmBtBmqH5Wfoe6aIrwgww8C2Lg9qLLEHHltWi7o0lZ7PMfxb4UBadsLKnwcF
	 0FkBHEkvuxjP7Ph6xWyJSEdiBt4GORmg35Oi7Oyaclj2baDGWd6CIWY7DnPWWgu5I4
	 IONmyTp2PofbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B24C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344965332.17923.7094973538296369450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2594cc89f5f61ab359e8442f2360b0d4aa6f7aca32977cfb7b1e2e64d7a97340
Date: Sat, 17 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663449653
