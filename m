Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F19A6FBF
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fM605Dlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAECC433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705376296;
	bh=sozvjSM0ieqtWRVhtcNtjcfuTmvAZAsEKIcEvxuDlJg=;
	h=To:Subject:From:Date:From;
	b=fM605DlqOOKDJeqq49IE9dxS1+jwERbjvoEcAIxvxSfJn291T2cjRiP1UV4MLna7h
	 dBcPI7iF8O/xpNpYu+IITe7fcdK2vGHTkqKUALQZm1lWaKXq1l8rQ4bT/IRhW8vOY+
	 bagkHnJr3iCTBwTwK+LEAIxdVpuezozyBtLQ6F3CnsWb6d/zbRBWlZlgDsTY2snbhd
	 GGn4b4R/bbmYbLw+WuvX0Nr8f/6XaG9974iWFZP9kwVbRqg+s38/auxGXLjkk9k86D
	 jwNnk4c1GaLlwybRyhp8i7O7h1S6ZET8ecj3RC5lb4Zszs5a9UH2y0o69sBFxyEvGS
	 VYGo4fslR2klg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC6AC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170537629636.13011.191641570322788992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5894ec53a3ecdaed63d849cbc3764eff035177f8d75145278bbed2ec80bea36
Date: Tue, 16 Jan 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705376296
