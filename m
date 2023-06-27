Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E55A7E6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD53C433C9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687900988;
	bh=1gCzFlU2EVCOy6Ro/zwouO7ByiyC2Y1m2IvnYajrWP0=;
	h=To:Subject:From:Date:From;
	b=YTXOLSQMMffq4voOGhJROtweAd5didhpcmDCAmCOIZRlQqjBNG6x+1kJrkNRDqo8M
	 jrTFP4IGcdsWG9QF0+iTd5Zp9AzAnr4BLTPGZJ3I/3RrymdHZUey4z+DgIqguGGpsZ
	 szoSITdUd0+XvG5dZt8mkHJrysL3NJNgp6SiE6iTBtfgcaS1axa4xOCzxlYgzPtIeb
	 rtK7LO3/Sol9qOMorOhobvuFaj8N8LglzxzdEmRs8zTMBRmM+vQVftVYYH5wwr3kv6
	 VIDmYCNCQB7Je3Uv4+frxQJSMpv1UYyhYpPVfuawL+1UAKwNVo0aiRSXRIiVKUu5QB
	 kxploifnx1TiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0C9C0015E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790098869.29377.8480573868312636565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a1aa2d3acadaf20b1d99d0a3ce4bf5c27e38c041573ff43f9da01892226b28
Date: Tue, 27 Jun 2023 21:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687900988
