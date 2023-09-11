Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BFD11711
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 14:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D9EC433CA
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 14:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694442248;
	bh=yWNHW3FCrT9sMuRxNLDCjN14+g9mg9p6Zl8P9o9A0I4=;
	h=To:Subject:From:Date:From;
	b=n3wDXcemi24YT4bif8Z4bHZMOvYbYCMdtBIaKRZRhmjk4UsvzQkOY1+GPq9ee2A92
	 aMaWl4RJofD7TiXNnTnCe1d+XBIUhvY33vVBpaWLVWUbblh6lTXluk2Edv9/611W8S
	 Vujz3XZE966EbJMteBMKV7vJjkaETeSUZQ1rx+S1nmSLEUHpjFICX5RNBGVvS90ru9
	 CbSt0dW0IYqOXORU0l7H2/gkSgRgkuT5/u22hRgTVoPcfIEigK2alMaqUVJ+mV56Ry
	 XIZ5RkFyhmUKb+hMMdFE3Re4QlHFdwT7bf+ljZRWLwHJ21VbJnSLlY21F0MyNJGKWM
	 Rsjzc3bcQcd/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A365EEE7FF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 14:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169444224866.13424.476417823081386040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e8a3b9475fa6e75621aa702bf830c6bddaa60a3eb68a13abffc9be4600805c
Date: Mon, 11 Sep 2023 14:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694442248
