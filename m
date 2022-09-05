Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38CA7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70618C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662418253;
	bh=fGY5CALbIBIfIXJgA+7IjqtCDuibtGToWgR6Wb4MKiw=;
	h=To:Subject:From:Date:From;
	b=OuZ/hnnM2cEU3R5RlYFw/bp6zO/bqIe0o0AyExlL2uwvPX0ZlnsMcv11OLzejJNNh
	 llBikGZWz4p79rU08Dgda4/GNvybhQraxIUO0j7A5dj+RRISz+0zEv+MJ92IqLGOzQ
	 eR3udQlnf/vHFwHsk8rapL4cRK19A71jR8N6U0LlHfX7QrGe34D+0DkhH2V0yvI3/E
	 gQP6iQNrZI7lAUDFE4xrcBTHkVsAtEkW8PrbDhggk7rPKhjGBnybttilI6WCM8ulIP
	 JoPV2PnO3hyYM2GXjtez3Z66hbV7cNdNa1y2u/zlHjpxAwV8+DONX4z/qPFGt/KzVB
	 kcdY0OHGtV6fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524E9ECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166241825332.4907.10067747708592942525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28bb84ac91d3f1d098f0e9b18604474651cee899a4462ac34bf0e60c823e129b
Date: Mon, 05 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662418253
