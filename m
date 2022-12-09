Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADDDA3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B65CC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670576487;
	bh=mOj3EPtgclDyWq0YQ3dFyClLOl3lhIj+3QQtl+52kqc=;
	h=To:Subject:From:Date:From;
	b=plBc6KY5V9SZwCQrJUytP75+oKIUkhCkndUVundKOVWBUlizcfFi4LKpnjnq/2HzY
	 AXyXHQl07IwEGUdxaA6Tdm1BavF24yWXdD1KAxh3KFcbswNGMUCAa0tTrkf/QcI+4N
	 bIuAz4n4GYuhaRN22Bt+HD/N5mwmn5IMxImC86XIq6xpz2ZSqJDPkZNPrRyZSw755N
	 ePA+piNovpXlIqpbSPp1OqawMjKXGIO/hVTnRX9HYAICVYjOrtvDyvDh/hUDdazc1D
	 VKMlUOyLyhGRA6+TeVr20yfb1GIHOW9Q2D8k+Qyu4VMcL8yjFngECeJvCWotEGkc0Q
	 d27pyP3VnVShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61752C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057648739.8759.14160539897891641808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b25d81c524420a3889942706c24858fa6548f085b47398440cc0df97a923ef
Date: Fri, 09 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670576487
