Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E79332C82
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJy6rtyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88CE9C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704980296;
	bh=/gu2zjWrA6DO3j7OU1ZFv88G0lUhl/9wLMXoURwVqRU=;
	h=To:Subject:From:Date:From;
	b=oJy6rtyWWk8FyF3gkpqXC7swbrgiuoUfIy7g5hB5yifkKgffEfUUxEZOTw95a6VVt
	 21Ba1QAPNPwomsKcYtND2rEqDdYhKCdUipGfdjvmEQxla3glI0VuxFCfYwAPiaOxef
	 zn2h1eE983G/EkYGEcXX+MhjgLeriKrXwYM6aGV+0QeLlGbIy4mq1qZxLkEG9rzTn5
	 6RXxQMoCH+lSab3nc0ajOXkedgjLmvteQy2dAtfE4LZ9RXWGGcyEGy/hBg6TC62d3z
	 47jQOpXWtsLvw7a9AyR7MXoKVtWvWtNpkqPMnnvupKBPRQ3ofl8U6XxoPipLYvIIar
	 uSNnBKMRTXMLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB4BC47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170498029643.4311.7112290324827066268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7629a91d8314f8639324d2acd6c90f64cbcc258119e22f4ac3f1d88a22b21ac5
Date: Thu, 11 Jan 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704980296
