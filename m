Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE826130
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B198C433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666640453;
	bh=pMFyy0TJwN5T1p9ILvMLMBsHZIoluvTPnpluMqFlnuY=;
	h=To:Subject:From:Date:From;
	b=aUeeKuyxnZ/u2+n4fjGaijo/4cqlJwsjXjRj/tsRUF2tTb1F8Zi5ckHKBAgtaY6JS
	 MTbpX6phakNjdod+KrrAbaC8h6MW5TOOTJMGB9NDnzRiGs6q2IRqN2qoGNg7JNvw8O
	 N0RyXRCOPL9sTee7xakEyu/hFEmh09oA3PYyd9ur4OKVn/WAMAgebsdbRO6QKsYa3F
	 fqEkYv5fQr+E9kSEyPsBCCOosqc456qb51nn6QQiGXbBt0vJxZ9ZdRBrpQJxcSkUmr
	 /3lW5qmoqeo130gskqtTb4MgktE+46RDzhC8kGLKSf8risSOtz55M4EN3Gh9o5BiFN
	 AF0IM2EPvMXbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F386C67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166664045331.26637.9560150235281676716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473d91c1a55e1deab13893125422351c0c16c8e3a1605bf4241990c465e7ac81
Date: Mon, 24 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666640453
