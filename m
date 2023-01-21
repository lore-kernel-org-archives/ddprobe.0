Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32659748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3637C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674321725;
	bh=t+xVBgdLKRp6OjmshRaRxRwOykKgi0X1mu3s2LtGrV0=;
	h=To:Subject:From:Date:From;
	b=ICHyErhwZicJgFU4kOQW5mg0HUfilp0Ecc/L/9pcpUzBzG2kBC1SQ5JvagnwUeiQx
	 1f8PCmbjnXe4LQVohOL6a9VUZqxO8Np1MQu2pjv9JevQr6alMAIbapsw6LgyjNRySV
	 hdusbwU/1oF2ma9aiHU9nTkETaaOlfe1Vmzj8engp+uEDlonxRCz2gzL+UQhXaR7Q5
	 CHlzAKbBoRYP6N+twS9Utg81x5YmqzOdOxS6dmRBvZF7Ind4pUeJ8CyjQyDIlrRTme
	 BmOth9J9atJlkmmRoDtPkjKR7XVH+CAvAikLAqzXGSNqmVgf4f+5IrybwWjBVmc3B8
	 hs10dbVm3AHCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA8EDC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432172575.18184.15309823147317675851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d758c0b9827f74ccfcd9d8ba5536a515b5157858df34724a1da336794252d601
Date: Sat, 21 Jan 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674321725
