Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C9B1FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEF5C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688906828;
	bh=HbBCjXpNvV2JsZZyY4d8TGzI9ie2ab9QBFf8I7DITfs=;
	h=To:Subject:From:Date:From;
	b=vQvnb7tStsLl47yGQhS1xTk3bJiP/EBdbiThwkozTsCoy6ZAjIufqXyl+bve0vpjR
	 LaNJwsTIx1b2IecSgGt8G8ahZGXSUNz3BaOpBnM0Rv0yeP4sxF6d/z0h+/D8FWMPwI
	 2cf2Y/igZCIfO4aY3431h3H6fvb7laZLE+IwASAY3xPQQ49Aq4Nf5uXoGcLesdqPMg
	 Oyi2ENuXuDfQJ/RHdl6kYXKRjcEPMl0KutBnNzBAvS/MSM2HS65YBBTHEmleTbwHL4
	 jP45od5DDGxiqx7/9ZrepKwf2hd9v1r9kRNcWMrs6joBcxxv1G6SbCElXzzjw5Hv+y
	 J0ABjtItY/XkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC23EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 12:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168890682867.1069.6808497973871339898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0378ccf2d72edbeed2281c5aef0098733d89e45bd6433b86629a10560f49fd
Date: Sun, 09 Jul 2023 12:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688906828
