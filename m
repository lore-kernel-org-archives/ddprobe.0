Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98DE1FB2
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F760C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665374453;
	bh=e56Uneo7SEFcYJFeV1U12oK2dICKsHoDuYDPJSUh4v0=;
	h=To:Subject:From:Date:From;
	b=EOdB4XWlMzOA0LM77vuF/0iKdyDoMkl4Y4w6e0RqJ1kL+dedyeBmgf2pIe0jLGKG9
	 7E8Owj4Lzk220PT7dp45X9o54P1wiN9kAtb00vSQvXGwW18UmemyZ/LzzbbPuoVyQg
	 5BAravdWmzXrx4ZYG/A1yeRa1Jx52h1p9OmfAy8p9TAlmT4w6BWB1EivCOKrxfRlkQ
	 59OiMqDP+/gSab9AGhjtZMQ0LLg/fJYXtDk/EsRk0ldH0JCUYLs/8B2KZG3GoQQYx3
	 6WvKClMN3tW1rks0axeEbgs8VZg7id5qPMdLbtaxoFhxfeCGQbpYvlTX5Aeei4/ppQ
	 s35eSRmtqfYNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DF3C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537445332.20155.10568197184383196477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34960b465b5dbee77760ec9b39d8bb1f49186a68bdeca56a6a4a49e860ea37bf
Date: Mon, 10 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665374453
