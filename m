Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2751376
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 22:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F79C433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 22:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696287368;
	bh=phY/8+s4QgzcD30JrcCCr+NT7PfeZiPgbJ3pcnnd3AY=;
	h=To:Subject:From:Date:From;
	b=baCO7FBkyv3NJPPaviIPynYluzVrp/M8+1cS4/K9Pyl/JYbUO3eOcLzdYGkgRqn0A
	 wYVQPsznkF/oSs5QI4eJQvzXASeAC0tUbjTJMMvaq/LmkZYM26DauFCgXbud1SXqVx
	 BiwpX9zfn8jJoUyf6DY27C/SRb+PENQSU7Yrt/7qcJJGHXgXYwN+dInzqTTzjN4A0a
	 ZQcv5HaFOC7PUdMQJSGIyRDFIep1LZrn0UusOwcD8hU88LAv4SOzGIX4ovpj/ipe4a
	 Vylyr1eJXQzIW1YVzSAZTxLcuGbkAEz7+x8lr4dbdxn16xV6GhnlkDpcjylDe0hY7A
	 iZNAhboEPfoWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DD4E776CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 22:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169628736874.18148.6707648198856705075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f68616152f53e7d18926f24a137ba8c71f3cfad7884aece3b809e6966e33a862
Date: Mon, 02 Oct 2023 22:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696287368
