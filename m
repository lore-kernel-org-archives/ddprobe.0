Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7305681
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzJ0tG4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA29C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703632696;
	bh=IHlqaiaaSLByUxYCJnF7qgK97co2rNOUAKcEWn1pXv4=;
	h=To:Subject:From:Date:From;
	b=WzJ0tG4RWs6zf5SIY11V9IFKduV1D02hBK5Dkg3HkXPpyteRegZ/KUtSt8xmGf4P8
	 onwH6H3fWNFSF78OG15v7zygWzk+TgbHnq8HfI9W4mroQ8Ho5wV6FIS8B7RLLBOPuK
	 j1Y/wr0MD1NW6GaicKWE88aQccAr4r4rzdjXqAn6tT5KBp6JgNSASIE4bQfffaiD0Q
	 iZm/erCu6H/deatvwJ2jPBEk9NpjYYIYXSeKLJx4oORbw78i1SoymrUEiqzXzAppXo
	 Wa8TVO+nCvSpXkOH4aLh/RKHg6SRedKewf+4u6wTlG9S87f4N/9WGbDdTZuxbMSlu0
	 CioKm+/Gc5BAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79A19C46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170363269645.25873.15308543131137949067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98555092579c64afa6fb35088993362861740e425318a05ed9d08c0b4831acf
Date: Tue, 26 Dec 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703632696
