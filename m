Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC1018AE7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C879BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690822928;
	bh=2al7GdGmsKUoc5Va1t6ZRrRbajFBJtlHz39JzA9ErNY=;
	h=To:Subject:From:Date:From;
	b=JBm8wZbGU/zFvaY33XuFw0Ymb9U6WmYyOqOXPSg+XFC7gjH/0OmlfYU49e1RneEO2
	 jXq2jUpU/XXrA0qvzuzbyAdrQIaa+kLMNw/2VHmDuCTMsZYGJkc+Eknc6lClJTFLyg
	 BhTZMfwOhSYMYK9D+VzafE2fmZT0aEo2cc+RgSI5UE80ZEuLnVsi4Q6eb17uLyWduL
	 cpqR8gMn8AGrpXGTns1RWTtAMQvTYGDFQ/Z+F7HHydqFwG5/IGH19hLigi34oydWr7
	 i1Zk9R/1KRfaoqZEIFzQSulXcTI4p7bfRbkV7EsBF/0i1GkLWijWBZ3qOsOv1yyU3I
	 2HSn4G+XFgcdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC40AC04A94
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169082292869.28138.1901586848539969200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5cbc4721dd2ead7c849601091e06242e130b91f8388381453bcecc9c6087d9
Date: Mon, 31 Jul 2023 17:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690822928
