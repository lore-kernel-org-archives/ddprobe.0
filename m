Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD407B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793ECC433F1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674034287;
	bh=RTL1R3PRLCw640uAxmmSK+hgujrPFc845CM7YTPC4wY=;
	h=To:Subject:From:Date:From;
	b=EMa5B47FmicuY4A85ttqyS2qWUr/s6T8wvgA0eGupKzHEsdu8p6qOMK2XbPzeEzT8
	 XDR4pUJ3NAaGZdoUtfWS6/QI4aWFXsMpq+EMfAsLHNcOiBhoWZKGxbl/l1KvbwqpWv
	 IlbgKW0nPiL5eXxtc36VsgWFcWfASKGosZrAOk/AhxCy4m4vMiaJ6+0/jIlV9XMkKG
	 I/d1Q3VBPLxEjvf61plgnT1Oo8n2CC41AILm6X6eKPozQo/5aczJmjKL6oqa/gw6eM
	 Zcwj1pb/FEw29AQsUAzegzkLdGYMjdu7YCyBEs0btHS7g2erT6blZx/NO5CrsGEEDP
	 SbDVmMo3TwJ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607D9C004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167403428738.8852.3675971029108737511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58446a89dfd705ae8302132d75dca1fe00ae708c8ce3ba10c79a21353c9f6d80
Date: Wed, 18 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674034287
