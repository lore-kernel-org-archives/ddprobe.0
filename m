Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF9E7E5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70403C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662774053;
	bh=wvjwXzFXspBKzjGQNeE0yXD/ZwJd9ZeZPRUO1cuGY58=;
	h=To:Subject:From:Date:From;
	b=H4yzBmR3MCyKYkO78OgKrXbj3spCiNZfEcgxXbfAHZX5uxmNcL6vasvZVtf1cSxUd
	 Th5zFx6DjP+GfT2bZLOGg363khs9LTso98WoFYzURG+KaM464cIZwOD8km0dMzhRYq
	 v3pDWs0m5Zwfyh1HiXA/SvXb4VuondbJ5Yg1h0E1Od1cC4rAly/YjZweVZ8BQ1mUYi
	 /TMcNrfDhMOqlt812HqeuipVXIXtbLqwSirExSK7fbL7b7sdg+tteWSdsAUYG5yWEQ
	 nvVXazWh/uqUtxJpkkQc30ZRETGWAS0cPWXYhWGsCgVZPf9t1lyj7RUuimRiKb1KV+
	 hcnybFWSv+mKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52693ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277405332.3624.2182525183424067382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6051d4883b99b74a85f468eea20ee6f1087d167d76f3c29f42c3a5c16016a8
Date: Sat, 10 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662774053
