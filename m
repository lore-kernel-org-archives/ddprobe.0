Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C493D388
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 20:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hC+Uv4pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F7FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697142428;
	bh=R8qGqFIlh87zp8tH7H9hf6AzVp4WKA2JKnsskvsQyfM=;
	h=To:Subject:From:Date:From;
	b=hC+Uv4pWf+RF0DxNdkBmkQApZtUoBuCzSvPNNv6ysIfBu6zh8wrL9t2oxALrq9sUQ
	 N1njRmf4Z/D1750d1VdXIEij5GhOfzCbmBSAKyPruVswzbTXc8yv02McaLFf5UbsHn
	 z7wzes+sv9HIjv/3izvvyUxpBfH3BaLViSkt7X9ZHSxGlMiLx/HHVsIfQWGBC7grJV
	 5D8IRMrjRkCrqfyKhb2B8ibc88Gh23MUQgqs+qo0L3RnerwvPXT7GqftJ4PKC4/FjJ
	 eOzBdh7MKwLkB3Kl9ysfqL6fVlrR2Kj9FIi9CF1mP4KCVtibJHv7ma99EjATR+CEYU
	 7DHUxQ6CModIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3099CDB47E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169714242865.6281.11725050344091521740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2a76a11b54431cd294a495f0db6f66d56b1ee7c769f3e374de0eb5f5317878
Date: Thu, 12 Oct 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697142428
