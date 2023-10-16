Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC3117EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 02:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pM5x+UEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDD2C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697422628;
	bh=pk3WWNCOvLP78diig3/hxTHtSpbb5p+3B+6o9/kSxAw=;
	h=To:Subject:From:Date:From;
	b=pM5x+UEl30Jmp+KhmJCFVWXXF8gpBXxYgqw3pt03zO34E4RpSKlQLWvM//o9R7SBg
	 kTo/eqnfJRahhcd3xstVlImdeIwGzS9hzI+I8Uszcg7rGkBt5zC3W/39u3uodMTC6o
	 vcOqXGeQGy62s/veLf/Hv4AjydHFyfz2ZS/7CxCzpHwy8HQxnqXTdD6jCTGsswN8kc
	 2oYuSDVOWao2XFCXb+H4JM35g7dPSdUQn+o3ltsbxioahDb3aUj8zsU7h2uK8m9muk
	 H0lPiDNQJewBFDKZ7ShC2nMVcYFfelNWow0Yi5PTn6cYAdpdUT7Fr8a+YjRLhthyvf
	 O67lKWGbaMf6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B188ECDB47E
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169742262870.21830.17136156800701135193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1227b277d471c1ef3c35585bc6a96c6debe167fa6e2286a00266b9b47d7b4cab
Date: Mon, 16 Oct 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697422628
