Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E61F579C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDDFC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670960487;
	bh=SOt0c1cIttsiyJY08Z0Yk5gvyvlvZfal59FNy67sH6s=;
	h=To:Subject:From:Date:From;
	b=YM/UigTDFZimcRv6/RSy3DmOc1IgqqlxBXCB+NILNy/6FXVkORbBerhwqHiAbjufH
	 rFktK4q3A9xDzRj0T+vv57ZsS1NaoV2sEgEgLr9hgQ08R/bb6Eg0SP78HVd1gUVIIW
	 MWqNzee4JHNK9GHv1JNmwI6nGj0L98w+BkhOj8va1fDjpb1QZi2i6FmfvgPykkMg88
	 Fdzek8+WzS9xLw7a/6liALUMcPP44snIycB0LZE4OW5hYHfsotuPWuxX6CRBWtC+D4
	 PpFBLoHArVJFQo/B+u4taUkyzbJouVFDp8g2UA5rAg9NM7H/hu92iH0IGE7Of6qX87
	 X8QdcUt04nFQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79C56C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096048748.15961.1984687453677171322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a046742ee0f4583111a8e1f24bffa863bc64813834cc9e86ed8df06af1e62c98
Date: Tue, 13 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670960487
