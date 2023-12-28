Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067BD63CD
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfPKOZh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C784C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703756896;
	bh=eUsWZkImtfzwazvr5mtT5Ytwy/107rc18MmJcKIkwPM=;
	h=To:Subject:From:Date:From;
	b=qfPKOZh52pK2p71xY6P/MkcsttjVJwj86P5IajTIP3A8+FQYg1m/4lpITW5850w74
	 +rtUZEwszhHLv8ZMQvBfRquwetNPaUmhUreKBeTdW2s6f/9M+5smyA/28cwwKhIbaE
	 7XYO8RXC9TrxVDuBN1gh5SbCgvxUxdChfXbKyCP0Qdpy0NJU0HJBwtcQNzKAOi7n8+
	 dvuMiRiFTmau4xapUk3pajUEZZMnYy8A5E6tQ2+xTTujxrOf+J/xagCSKR3xe4zAG8
	 PAoKfvvRtSgIppaQD1DMu4zG2AoP0FskJM17EXMBaKoxb8D2KIJUJtteTTyWhX5y9E
	 cMFEhPySbZSyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F6DFC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170375689638.5124.2983340147277602580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5eb28f073086013bee3ff8aa487f1b159facd16e83f6dc8cccf04939efc1a9
Date: Thu, 28 Dec 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703756896
