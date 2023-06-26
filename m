Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2B736B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08786C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687737789;
	bh=WDZ9ux9cc9vp0tn7QQAjCD/nb2fCUs3ZPrleD78gbDk=;
	h=To:Subject:From:Date:From;
	b=pGrqEr2oZMsIQieNtJ5uh8IbvmDDMPbYZ9omZb8ixsNluNSPwycONN02ifpmihH1d
	 Nq9SCtNyyS3725luGkOqxIDvxqSZBaYLfj3ooi5OJYB9FLEkJOw95cPu7vLfnsRY22
	 DjrTBalDW/XW5zapEAnD406s/QJIBabcTnkQS6zmOAUXGBOZks8oovQzWcHevX8s5f
	 mB2+3mfC6hSf8lHhX/T883TqtEbmJkkMch+Pa1S+1YXfaSJbPXvVhg8CjQr+5u2YD2
	 1ZVs8BObBRrFqK8j9ZkDfX6E4DskV8yQeRFqJLzSU2aB5SNBous4GncORdsidcP1SL
	 EtxIwqR8KjXtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF63EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 00:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773778880.9172.4924469001497852763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2e6138811ee2103033147d8c0c0942ed2741652c55fc0c34ccb025970049b5
Date: Mon, 26 Jun 2023 00:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687737788
