Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40127F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DADFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666067453;
	bh=P6njNgk2M3ulOv3oP7jxgBCt8vqZ3GXY6mmJXOxvkZ8=;
	h=To:Subject:From:Date:From;
	b=EeQpsF6DajbLIfV8Pzzjyby4ZjEee7RIztas/IbP60c7cAtRVCt6EZYFMhYGkzrvf
	 rB/v1drFwEIyUrXqGwkn6wtNeIOVS2pYWP3Z2XajeZG6GJC/12bRcNT5XoWmN88/Hb
	 X9xzi27UFMEX0zMsL7FxS+VNlaIg34HSrdNBPNlVUUVPH7f+ViZQJoTJ+LHBFmSLFX
	 nLYHcoIyjgEWf0I75RygLmSpn7M58T+WuDJvObl1XMmmFCw9ozKPQC5zdUDaUo87jb
	 bRO0Ra/LGAS+ap9Xz2B36WP+OsyvETpb8ZW/fKmlj6+ubs+dv6PWn47/SMg8wAC7fC
	 GmlKzw4CEKnkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5129DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606745332.14311.5085965424631596934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e009ddc740d3e5e85b75d3ea3e2c9aeed086f0c88c5f22b75ae0896d94379373
Date: Tue, 18 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666067453
