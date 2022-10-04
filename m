Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C827320F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED5AC43470
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664866853;
	bh=E9Cznop9wqZEFXfcmD/G+JHw5MyVeN/hXhK/badgPCY=;
	h=To:Subject:From:Date:From;
	b=LGOO2Ii94xdW2rhbkLdCyUZbZbrXJq2vQxbDMy4JKiwmQLOsMcSze3PsPbLEg8sIN
	 tcuKc/huO2sqQZWP0QNABgYImDLSz2RzWR/QCBkQcu7B135/WWKo8KJS79jdCYlhnU
	 du6pOkTU8F0Dxx2tAZTcA5NZijhhOUNibXS58BOLptub2duml6ntXs8Dm45EGDsyJT
	 oFmcoUZAaqZbcjSGXB/yFjoC8b9gczU7XZZgwSawhB3z1WFHGQ0zurgMUBV8xbHn7g
	 Rf0WdV75lg+uLgUzxanv8dbgHQR7XZ616xvZkWT7YZNRT7JYrL5JxcLZODSn0A3W7p
	 OasxzjBlvz7Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F9AC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486685334.6425.3959822051900338971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f8fe6f98b4bb373c99fd78a7c6966b20933b05fc5c364e67b0b865e78ac76d
Date: Tue, 04 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664866853
