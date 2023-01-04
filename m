Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4739BA45
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A10C433F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672864287;
	bh=4vc6BMj162P/roFfn63UmKqa1ImroaH/J4nFK63oHIw=;
	h=To:Subject:From:Date:From;
	b=Z0h8j3ipUnVR5MuUf/MguAP/PG28NbP2bioiFq32yXeMudseliURSD1ypsGOrtapd
	 pmXJ8y9IyztgVBHEWcuWh9yUdpUUdBbbxWa1UPgIg5C028iX2yQ9ZS5syJxUzG7iW4
	 rORHgVYVSTBISLRsKwnpAL6uH7cKzHOGoMtf1bDa8emzFaEWZECAgJoCaRcX+vqB31
	 tRnPwjt5sH3L0mPBl5eENQubdGQVscmuPYemgi9HvF9YY6wX+n+UKhILjeTwl1T1/R
	 e5i8Z2YoVq4H4j+fLxvmVkLyzEod/NzaC+OYzdscESnNcu7fjX6EEGlL9uSuLZMTEk
	 YsrKHn4cxkD3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6312DC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167286428739.15871.15680763428447413476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4be9afec5a37afb01015f529661b19ed6b3391ffccd745a3a49aa60e53be9e6
Date: Wed, 04 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672864287
