Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED41946B7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C25EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673826687;
	bh=jkz+uLnJhE3rnIo0C2FPE2hrm4tjFa5zMNwr8NClIzU=;
	h=To:Subject:From:Date:From;
	b=fwT+wuC7P9C5eSm7f4XLitKKEpR+VSrLKyVYO5TvhkeV8uCPp8hLSGRkI/zFgHxGF
	 1J7cgYt9VJjJ5DpsK74Q8Ud16vhadb/RGMstAteRa4a8LkHBJzp8Jr6ngPPVJdbX5t
	 w1FsMtuBkv/yLNhV5g8Ti7jpsask68Kia6M8Yu9GK8C7foK2tb0pTiFNFp1TSAlbiA
	 nyuFsqSC7zBZ5FNXPIagKYaq3AP9sYuvVP3YgMJXpHaJKZ9aSMuMINj5YG3lqTGJ6L
	 ZxZgM7VKZIRe/QGaL+UmezGby+H2qCLEmepDa9DZ4mHC2wv68FCqkGwsipY1WJjxTu
	 di2G7jPdEdmpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ED8AC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382668750.20280.490329092817079749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc2f226bbd630280609811d14b76a7d45d72a4e8b2798884e12c4bedb738adc
Date: Sun, 15 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673826687
