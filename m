Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306723AA50B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781888794; cv=none; b=hPcy/xxPDzkfVCocj1uiyIAoHxNAicocWi8pTCoBbd+uCnfGlP5nvJ/289xqi4VZ3EHHgQlB1tAg7Tpd/q6YL7spwlrJhS0xzVqHdAw4wUhWdl13WP/B2i5Ve1ZJvAq6sn4/zIxJDj/n3Rpl7ev8TQocmvEsDahTSAZ1pjPlJSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781888794; c=relaxed/simple;
	bh=5HYGqmytkwMLEaQNPFE+Oc7U8o/pzzicIoSYnhZwPA8=;
	h=To:Subject:From:Message-Id:Date; b=WOqkn7xdujDd8ADmnonBUxuJM6knqPVGcE9qUILZIRtDKtl1Zg/J6bbVIowRCuk8K3Ld/3eqnSZ9D5aJmIFgv3w4qmR7FxK9e+JIcSLBPpwPr8yNXr5plpvWlpDSkYOgAg1T9V/ZyR3cu/YSmhACfmF4QE9PzfyygNubjfk47aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFTk1lp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFTk1lp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85F0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781888793;
	bh=5HYGqmytkwMLEaQNPFE+Oc7U8o/pzzicIoSYnhZwPA8=;
	h=To:Subject:From:Date:From;
	b=XFTk1lp9MwiBQJfIA6r/kLniBTE0yPrVCKYvwtZbbvpt6g8tuC0YdLC4FBk2FgPtp
	 SvT/MHlgsBSeIJiMZeLssBo/wZ97IZClSDOmJ7sDEhgUNh+deMJvcn1CJwGGmUPA2J
	 oMEjMCZfCrp6UI8+orTglzDG2LWmt/L9y5uFIwAC3JEDFyWouIrA+gGj2D29xzQrvy
	 tWvId3pvEKlA48jlmuDGdgFWiJbbuWfJ7U4Z6+cDb5Nl/CjYy6SOEOS0K/k686Wwfk
	 lrPvlFFBqhxalqa9gsM6mZ5T0WsHxmJl7SsGAgLdzZSoGZY7FojGuNNcQMg/ypyJYa
	 FcHu/MnPP59HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4CCCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188879369.27456.68861720385166859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa18d26e3617be3cd5a322a1bb6968acb341b513b1b887000b3f8b8d79123cb1
Date: Fri, 19 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781888793
