Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8086AAC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8212DC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672702887;
	bh=z0NXgxc27rZfj+OqrvZX8x2hxkD+TDmnNOG2eq3yFXQ=;
	h=To:Subject:From:Date:From;
	b=HFQsWgI4rF85Wu1FagMY5QxrrcovGC6ZTTjkD9d+3LLEYIysk9BrQkXChihzTczrI
	 Yt+E+N4/3uWryHgcap5MsH996KgY7dRSylr10dsRRqiXEtIYpJqQBgFEkzN2wcUDTX
	 zd4z8qqzsDUQoU6oGeCIEOjOpF7H5j1G/6d1FZ/9lz1Z4RwULSjw38pMDKoxU257S6
	 Gkg4daRWs/Gx2E1H1LemTRxRXz7UPZWZvY2M5r5kbcz6qDt7bRYO6st12Xmm0ApNbZ
	 ItK1fG9oAFZm1nCMju2oSHUzYwMzWNUYbpaidU2Tb6jomO9Hk5No2qiJt3nPEwtNDL
	 98umIKbgoz9pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B9FC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270288741.31351.7064012923817712708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91696d2ac5f39e5c29f6766329307bbb23aac231280f29d64a6fc17754711eb3
Date: Mon, 02 Jan 2023 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672702887
