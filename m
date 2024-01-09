Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE76679C4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUtrQ5pJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D1BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704783496;
	bh=j43TlB+BNXI+IjZZG2Y0K4rADRSKDfmfzDfsv8bUYDI=;
	h=To:Subject:From:Date:From;
	b=FUtrQ5pJVZB77HPjxdxiaXBRLpNNOzki9Qn+gsxi97r5tw7upuKWMEofNbO7Q2ZVq
	 ByCAheekRzkB2h3i6HR0/YyaCAa0dh//9nKW/fxhJS2XgfI0GohovggcgQ+sBwq5Hf
	 9WKT3EuR91v0DXLEhkBvjDXz5wbozMo3yOtUu7B5SYW2vGoUMHPrhhGwS6PRhRWFAa
	 PRvwoMHyFEQbYC071hmp83mGk8sB2FUJxlaJkXukMRIiTBgCgmToyB/47+a6E3buck
	 l20AzgvkAvxntmG4PjMHMdh2D7ZCGJCvQYhP5pg7Zd/mcx9oF/ZZrq5UwgPIRq/ZIa
	 tu71SWvt2A63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613F8C47073
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170478349638.7534.11087867812675025447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec55e3236d97d24f73ac4ab425fc0b1dfb5b83ad533304ff70d214dc084529b
Date: Tue, 09 Jan 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704783496
