Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C8D7B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97C2AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671072087;
	bh=hXj6FaC/974aHerwwRVd1vCeIrsIH3R2qGFiPhKAEbU=;
	h=To:Subject:From:Date:From;
	b=Qh6/H7ByXsCJYU3p8VIhG7GHChxKKPgQCWlT+DvBOa5XT0QUyx1+g41YU27WRPBIJ
	 wVqwjNZKTBM2wnX77CWnPfVoIgb6/rlCzGbMhU8fKzR+EwkxM1ln2PTxyMsP7cy4G9
	 8aZaYhCAwcf1KWkiVohEOClfrGMNCCOj5a/se5KdRCsbAGenY07dUEFlxUPDz4+Qpw
	 3qMP4uwyOqP4+6nS5R6zlGhkqY75abySxzBU0GD7QK4b6RVRRQVjNcTkoYpawzt382
	 LjZDamg4eqO7KWkeAJzGwaQ6kRAj+cMTGtBY6FQg48G2zyMcqvsOwBzLgeN40jyFOG
	 U0vcjShigj0tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 778EFC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167107208747.31305.13429797913832301939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c377ef624cf86e7b7573dcf14a3e0e6ba0b9c34bf6d6bf605d4060ea99c18046
Date: Thu, 15 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671072087
