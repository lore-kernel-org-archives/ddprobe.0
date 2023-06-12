Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D956882A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5FC7C4339E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686597305;
	bh=KbomtfxGlF13wkb0KtfFlw6GbNNHtGEOjCwwun1TET0=;
	h=To:Subject:From:Date:From;
	b=UrPDC8amWHTedmwCBTiIeyyFsl3ibB+zH3or6zehGAXbwkSu2YA0O+sum/kp5iGV0
	 KYXVeZeTu2KnXnrrX/8XwqN2ivQcHNfdgByADvKkMARxuvLKBxer7bJSxNqJDdhp+/
	 tDy4WlbIBkhJzebZa3nUhafJdd4x+ErgbivDDKAVlOXbCwIR1uiYmGiOD1Be1RX7el
	 HJSVhXLzo2Ick81l1XKNIwf7srq/sFHonTokTlKh2RADN2TqNaLg17WuidhjylN+VM
	 Bd622JjXnTeOikpwK3H6GnDCP8wl93z5lzA/3y5hOQLVU/62IGiF/05PFQzGICysT3
	 4/+tku7WTWwiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB4EC7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 19:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168659730582.30209.14908039134282606826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91cde1f3f62e9c20046c5ecbc53147fadc8005c24bcbc5fe86387fd98646a7ea
Date: Mon, 12 Jun 2023 19:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686597305
