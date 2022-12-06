Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9CF17F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69ADDC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670298654;
	bh=QjHC6pbFmvh3k09fFuTfTkh7T3GfcY4/07myhOENXts=;
	h=To:Subject:From:Date:From;
	b=SyMbgPN8O036WXiSKga69dYmkkT46D2qAMMnMBh/xoI3mUba5euP0AkqAYmJZbzMc
	 Nv1fytrZFIb9/aOgYLlmWl5VrqevzZt8jBNaNbSaK1+ISpD47t8/qlV866OGngfbZt
	 pTX0hC0Ch0eq9FoNMrJ0YZHJTU4hj6Or7VwckIG9xtqJzxZ67rLL/JI7O/2u+aLmeb
	 AcWfvOMO5RPH+GdfSYPZC+2+0zvNBkfGCAIwIhZ5aWnsCmTsS436L2ImncJn1qb9GF
	 8g4EsHIwnRL2zQ726zu+1kyYgz1UZCb6auleUxXfUvF1HOsjwabg5aObbWWb7SDXKC
	 WZkPvVARuLESw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503C6C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167029865432.10260.15756209229872044017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5c6514275d273d24c12c343936b16fcca58db00247fdb29f40cfc55ac19bbc
Date: Tue, 06 Dec 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670298654
