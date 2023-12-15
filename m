Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112BEFC13
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOh0hkW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F230C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702624096;
	bh=z863a1/6WWQwibU/PjwJJXVG2rHxgrbq6v6zd2XBWuY=;
	h=To:Subject:From:Date:From;
	b=bOh0hkW4YLXXm97Bvc1ad284siYIFlBgS3hoOemvE35vTpa3NLLrCMbQGXCtRqT7B
	 88qV038mfgOJeZT7S18qwrIJ3CdhtmnhTsgE1hDqJh+fM4vM50qT7zbBeiINqHURfC
	 Fr6KqkhxhoLNpCgivGLaujdHgV4r8lZkWRmuDMJ/mSV3SZqoPAPQxJEtmqaT0lD1kI
	 E19khgaoizJuYWknCktfqUejZ4WRUCtlp7S6zSA3J62T/yx1RraEQpoZnSuUNIrWfB
	 XIafXNi7w/EC78AKLR8rc57BK4Hdo0WepjNvUup1guuUGLZS2nQX31gp7ttmJ7qUlU
	 TdNARP9uvumhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFDCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170262409637.7409.16377513549092102977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29bf7a5c4ff731f044f222fd0840fa338109c28ad3585a0903ba7016eb477e6c
Date: Fri, 15 Dec 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702624096
