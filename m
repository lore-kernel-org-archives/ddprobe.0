Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A216D24
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrGIxZzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A61AC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699775896;
	bh=ltWZQ5M8LYZ3zXKyBdgoRE6oujGHkjibHYzGaIX2XN4=;
	h=To:Subject:From:Date:From;
	b=UrGIxZzjLMROVUoZj1b8UdVhsNsty6rlRjKaOiAmh1KKqG7bzll+b8/mIqT74MA5/
	 BYoNZiYuS0Whfofzgt3pzQE/ql4tmr6wUxyUCcoaFsb1pawg0LiOPZHNw4L+p+RnNH
	 2eeg+IbrdsH9f4H2NP2J45x7NepLJ8Dmd4Y4qPTaOjKRnCGXCQD8U9HS5jQEtspzDv
	 XX1kTj/XTMizinWgJP5FF5b613vpVagr29sctKvsrJtqQ0HGIYf1H/38hDOv3lFbhP
	 tfUKmzVVRWZI7FG2DR8w2SK9MXLUfKQONDt6tA45Gl94Q5pszsAlwJneEPMPRTjAUd
	 5RpPECocSV1Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F114C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169977589642.18364.17264570963061721960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92dcee44e4ae4725c7a1b5db0c0ba9bf77a1e5d7b683246781300295d778ddc3
Date: Sun, 12 Nov 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699775896
