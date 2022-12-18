Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EA210E3
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF6BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671373287;
	bh=/VYT67A1tLgiKafMfEL9N33QBW4MIo/dQXF+ojF6ppY=;
	h=To:Subject:From:Date:From;
	b=uF9/Qzrg2JZethJNJxQ0sb1hYEEEaCf71Tf6uRef+9rZZjR8lbnQ6ii4fUIbI6iWd
	 BUWtz1IiFDBaTtToobDY4PQzlBys9dchNHQklQOSCwmyxcAtR4/o00AJ7QDHqoZ1Xi
	 htB2xpjGYszbGs5uSyF8C/69AfXr4emYDKqLSk9tmANFnJi3SAt963pNMDaU3XMHOT
	 9ys+2zYj406ojyLNfXbXiu/tuANhA+5nU1U4Dhz7vs/pv15jaNxFaIqELqdEi1cuOU
	 W/RPz6Ho+eAdT4x2dGcvO4YAzkB3o1MYsVKgH5iag/Em1rBLTWgT83yOEzPuVCeY/L
	 mUxTmOr7Mww7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E00C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137328739.11500.4117647502727639084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8e4a88a00487ad3cc064a0f6b89758c44bb9edbc38ecf593dc4aecc4372f4d
Date: Sun, 18 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671373287
