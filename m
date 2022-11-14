Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66B88498
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CACC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668466854;
	bh=GZ8UeJppBOzqlJrkLlPVrRlWix7WsnT7zNCdOo8fxBw=;
	h=To:Subject:From:Date:From;
	b=oNV/gYtR2BBJEOKv+spcrg5ehmw5H8ox6vnzGmqBgm98ebN9Aw7P51ftnhAfqbtaE
	 j+b2HQeu9anQhtqrOt8eAqVQDkP/tO2INYww28U+kmWOkEXJXwn1/zdXUvQ8ndtxiB
	 ZUSbc+sCsg9iLw4sBIsjw9aINzUHto2nF+HIyCfUEOIA/VcfTrt1EBXFAOHdOllF36
	 oJVvIILtvxOmJZ4f8gohcUju4UuTzNaA8zp5M+HudnEjaX95wXKkUQdUCKyRFIFTHH
	 xrbP+Jao076PLGK4Zda+YRo+/3hwaCnvWbJdSfheVC1tq403d/0nQzXan4mv4nFNOG
	 r/egKEB3dilZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570CAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846685434.30112.9198651059500244048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b52df17743e524a59829027c580ee6ce19031a258837df84eed2711ee6dd96
Date: Mon, 14 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668466854
