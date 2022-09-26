Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C820D366
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F057C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664167253;
	bh=HvRDZz4JYsTbFVb2Hu4eE0U+uqqu3piIZ9CuK+VVIGU=;
	h=To:Subject:From:Date:From;
	b=nWjxb9/4T12aAAe0FTDS7P/pQu3OWfp83zP84hHrq5gugv0/gOMiJ5+QNfRnFdjU6
	 cskW/t9x+XTpLlpk1+w/6bJqodjcTVOzweKP8ZIqsmFC4pWrAft3Se76aXqhGycKoJ
	 pFuSeshr5//atO5Z7GxunNZ7jaPH17r4ie6Nu3Ksd2nIxGUy6hvCfPF0uk70v32MQ7
	 zZOdcbELShmeHddXw0RLnTBq/4M/ljYzjn9aoH1SK+UN3G78ON/BsrPJeRG+Te5jRe
	 cuWlQhuPPUIs0oPs7fkJJxp41KM3KU3t7wrv6YNfnO4KDNO3x/MeyWtpjIUKanZaDV
	 ioGcUditoOuFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53370C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166416725332.8086.349782901632259459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b2867d0da3d2b50fe73e1d241f4cd8b0e9d533f38cb84b73befe93ca7ad2a4
Date: Mon, 26 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664167253
