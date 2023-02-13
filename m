Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F9423A5
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 10:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB498C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 10:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676282645;
	bh=4OdnlqZRYtQbzA79qrmcAncQ0Alc6N9zbYLCP72ANlE=;
	h=To:Subject:From:Date:From;
	b=eMgZKZpzcGdBD1w1Q6Kl3PBMAHFmhyX3OoNJ6vy2mOpYCvAj5MBmtQnYFE9C6cV1p
	 dQGBvXIu9rNOxb7XicMWioANk7Em/3QgiOj4LjQwVMS1/bNkfQJtSh/oWUJFNscMQ3
	 zKRUg/ndn9Ursm3sP82nn1Nqdb3BUuL6de+4TQmHh6xtkMdLHrgV0XI5LPJSdJaOX2
	 XDvHr8ZinyzQZfCGYmhb9rjXOvNZZIDxYOwij9ZlMzDm4Yl4K3cr/4WhOS+uyGb1ze
	 2oc4vBtwaRgq88F4NoChfaTwVWYWgufgCu+JknKqcMeQJLhf8rZLh8mcCUQKRluhH9
	 Jm4Tu235MS/0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF9FC636D4
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 10:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167628264573.22574.4381122241973565365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2edfe99749a6134e500d3c09ceb2d386fd9c2c409f381a6dffad96a10a9a2d
Date: Mon, 13 Feb 2023 10:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676282645
