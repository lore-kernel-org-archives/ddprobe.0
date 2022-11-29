Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B77650
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C25C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669704054;
	bh=dLCHb1z5sjxZxbYXK3EmeWYy5tvb0ZTMI45AOibGI4U=;
	h=To:Subject:From:Date:From;
	b=lugJk6l2Vg507XhVQL+ffr3X7M+pJ+cxHNmQIi5xeYDn18iKRde0zN4FZpIe2Mqu/
	 mOG212ztQndSywkNU36oQRGhSgkvDl9sGGCxKZD/wMa7+wQC7cReZzc/G0BAQy9iHU
	 7OI8O/am/N0RTWAQvU4LgLZ0chV986CbM+oQl4wvE0Ams8lo16tPJrR9DvXNJ5eGoI
	 hLapJj/P1fJJCEjmY87jevak491pf/St6vPZcNclOf9srSRscClJwkDeu0vATLCt+e
	 J4i+FtDWg85UDYHmkn4rsRWYH+cnaLz1HqEE4QrTteiRapJ2kca+h0Rv3o5ApoY3sf
	 e21zrd9T0o2NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D4BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166970405432.316.11173191862838463065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa03ef152fa992bdef31a58f823e3991e4620c512711142935e9c30b43b82c89
Date: Tue, 29 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669704054
