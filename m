Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2ED80F
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 07:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C4FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 07:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676792825;
	bh=u8hU6MJ7xXS1L5lwO0UA6WAt1qrEkGHizK2E3xhEgTc=;
	h=To:Subject:From:Date:From;
	b=XrJSBA1CnTc504w63iiAIPLdD6rffnqvpPy3GXFdpVsXtzCKSB57xEFT6/twLRWxJ
	 O8bUpDqHyYIJSBpz7y9TFWbDqkHbkoexotgzM85jb6R8t77sJWcjV7qh2YNWAQLgaT
	 DZ4+JRndnU9Roc0k1ixuBpdyT7w/jzSs7kJ3vVvZB32O1ldN0C/A0QkP3QijE02hiR
	 k3V8RUYjC94qAnSXSaGJw/+P5uTIrcmFywtankxAyFD5CVLKYuoX3ihJiJmQBmHOEk
	 5lK17+VRu95wFR8PvpNlMTBgY2X3rXL2XapdHBi/8qf6QUQNm2pv7uhGuAV2hgIdip
	 lCuWE2SmWwmpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE37C05027
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 07:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167679282576.28251.5215732677187207449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b768f3695902d32e41dcfbfc1ee8cc4fa46c39cc692f8ba99c41133115c630
Date: Sun, 19 Feb 2023 07:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676792825
