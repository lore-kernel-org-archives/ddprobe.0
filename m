Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A3ACA48
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 15:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0DDC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 15:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695396308;
	bh=NyKq2zfGRul+5ULKtXJADhE0QxMlsNCywQdDzG+lNlQ=;
	h=To:Subject:From:Date:From;
	b=f8vkkwfLQ7+ebUvouHNGxa0/WB6ai2fwFmNESiG29P5hRO4kW1QIm+OzSNqsmDzTz
	 satRXG+j70crWmj6agLPtnegOjN1LKp9il2Fme4rOldlq9kA89LAqg03LfjCTHFdvt
	 u/fOgh51lmXMIJHi8+BXtOB210LlTNo2tuxn8nl8EbY6/IBKmfNhO8RKwwmnMquOrf
	 WC+netz3jML8cA0OmTQn6Q+ujjuM75IyQ4J3b/Wx2CwtdbbTEFujeNKZHuN1ik481J
	 H7u152Gdo1zd23hddgQYzdTOwt9pY9AuBu/bE2z/aCjQZXGNvF6kaQw3AeMG0xCi+Y
	 sdtxQiIa5uYXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8C5E6FE52
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 15:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169539630870.27761.18379270527318322713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa4a00e0cfa6d4d7b041d3ac871b7d9cccff8be2ac1109232d1b5ba1d075e87
Date: Fri, 22 Sep 2023 15:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695396308
