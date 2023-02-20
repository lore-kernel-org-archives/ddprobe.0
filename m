Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495456D39
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05732C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676909346;
	bh=caOjDjhevoR3rKTPWnOsaHDCiJ1wHK6BjBqWWyGSgFc=;
	h=To:Subject:From:Date:From;
	b=EbpX2cWrSDgQ6C6OwA1n7pRfVQts11hWxfMEl21DJaT9nTVJmcCJPEmqEaQX55mS2
	 KSGmHXLw4Quad/QJfftq7OcJmGSjXSipjVpsVKJFuEo+7bQvfdq1SgbWSnJMmY3HJY
	 8FhyuroA0WWWvxXiTFNwkeZA8XaDBb3WO47F1BOqJLg7bTzUpCOmBtxmp2p92LLXcA
	 ygB5msXC6gILsmwUzv5Pq5fAGrSUkcv3V9AjIc70rHMqVjokAh8pCfunuKMGRgq+K2
	 nRANnp5z3Q2UxRubBkAhG6DcuKMOHu1l8wrM1XobHx+2x9Fw8ADp9T+2M6n3gku59t
	 6BFCNoxifUoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B99C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167690934584.10015.12055508591893939054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770d8025a00dcafdbc8f1087bb62b77474f81a01364d4f1f87c32729dfdb2a11
Date: Mon, 20 Feb 2023 16:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676909345
