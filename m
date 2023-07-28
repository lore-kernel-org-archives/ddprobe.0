Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6029AC8C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40DCC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690546328;
	bh=xq5BOjykftOvHvu5lfxjdpd6qFp2ICzBPnc3nPRUS5c=;
	h=To:Subject:From:Date:From;
	b=l5OPYi4BfBO7ZSmlb53gG9oFpw0uBOGBYckBA+F302k/6OOqaQ4vgh7ov3LUpPxfj
	 rEjmyxDlQxmcPl25QG2S+I8DIXpmzJoinF7oRHcjJc1+oZ9NBRG/0C3sI1yfW577Eb
	 HlSHLRZA6uaGTYqfNO+e2Xg3fzZPV3j7Or97jtiZqLmQ7htcuUF1Xufna2HAfgZ9Xu
	 R5Ryk5P0AI3VpDeySaK3vgl3iT4I/H325RXezC1B9E/0xz70fdx/Ndjf7ii5dtkt9k
	 Y+VrUjKtiI1Jzg92Wembc9tWszygXWAvee2+I7nTi3JpZch7EcV9/6M0h/oNhE1p7+
	 QqdRew8M017Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D67C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 12:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054632869.18537.5930442742800612157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a48e3c80f29c9539b5604c59c7f6f11b74d5b64f1ca35cd0161ea8d3c0a0c28
Date: Fri, 28 Jul 2023 12:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690546328
