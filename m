Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B6C33F1
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDPbqvBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ABBDC433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698151696;
	bh=L8EpmkOcwfpuwLLSvlg76red8wuNu58zNubryK0UH9A=;
	h=To:Subject:From:Date:From;
	b=vDPbqvBPMi/FkbOTxnnbZ5xY3ubbIEJwAJekZZvLrzQZBhQhFCI7+tYkuVDYFc9jP
	 +bLhlIceOXveRRbpj5MOIPeCup80eihL1QWB5RxPdX57n+w9KcSf9x4ZEuXPnw8Umo
	 xkKvJFDJ3sVuWertDcA/pPmKdxKfVnFN4Eds1BO7jixAi1pt8uyfFZeN0qvs9wfVK4
	 gPeUd/3PPH3hr8wWzz0yTa3WXb6qffVXfBCcV051E82qJcd7Hzw9IwvT2MJUpEHtZr
	 qd7/47kq2BGV3sh6oprK+8gv+7oV2r2y2snysKR21hGBhlpE/kRRkhIxOWQ30p6n92
	 N2FjB3aFR5t1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6796BC00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169815169641.13348.17631262497117900204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cdacaa667c5be043641b46fce030af9312f22425b53df2c752bd22f10ff10a
Date: Tue, 24 Oct 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698151696
