Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4332F28
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36AEC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688773628;
	bh=JMxZfMy6zjnaoq4E+e2X5BjxigFpB37o60MhKqvG8Wo=;
	h=To:Subject:From:Date:From;
	b=P2SjuOfV93AYgHasyzueiWQUETbwz9+cH4HlUfj15IgDsL/vbddBh/PYylayS3qLc
	 PmKk0kXPgGu+YUAynmQkKaD19bSmynv7Tr97JNAjLkGkqaeHo9abbM3Q3ShY89Gl7n
	 Lrg4Rvm4AvX1xuz2UpOYQLC8ACAjoyagdjNlnShsWg6wMzcSESmMnElHfLz5aQo41U
	 O2Y4AA8OaQk7meRYrOYuRXVa7Q5RzjSpGIT/wHV+XzovxUnKOjhOHpjHRckI2pPYS8
	 SGj3uwjFk78OBKXWueLMIhBKb8FlpbB4wsvC4TCRw5WO4YUqilgpDYoEwRU3SCo7VC
	 6MM+xIdVKnCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E5BEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877362879.5044.17780339427551004103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b798cc0a7de90130e7bec739a281dab4662501a8b818ea118ddb323c90a4cac
Date: Fri, 07 Jul 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688773628
