Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BBF495E4
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQqClFIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81BFDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702378696;
	bh=db/dY4Ei5fhY3WAxsdYotZkACW1y26Pa7+DRNOnl7QE=;
	h=To:Subject:From:Date:From;
	b=iQqClFIX05cjqUj4v+dcjcOFxQXAJ0WFQ7CNEOzHxfcOOWGSF1/S+p8zpx4uRR30g
	 cKMZ24nX1nlb0d/JqRvoH0DdWSLrUm8Tf0jYSXK1MGXy8WDGLXVHodAHTtXM1izr/X
	 bngIVrCwmwzhhj8OKr9GRLWvbgbKYGTij7EtFnWnGohXiI4oSW6EspvldJmUrsBzXp
	 o5d1jlLDQrGDvNtR78EsK1W3euRAIL9HuCUqEkEUvMAOyL0YIwcLr6yOz/kY2LwISW
	 WGFiSKSNqoXbLsY0Ev5hmYbtBVsIHXHqOImjNziJ5xuw69vhrrvwwbYV738TQeRbpC
	 p1ufp4rWkda5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68592C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170237869642.30617.9447895978664535954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fffadbee38738917ff386d0883b105b1bfaa3fad2d36b7f351ce0b8e7855de
Date: Tue, 12 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702378696
