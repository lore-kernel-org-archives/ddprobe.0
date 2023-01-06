Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D6D95C1
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D07EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673035287;
	bh=3BAMjmVqHEVZAfLc8ZaXtTtQanjvchEXp69ZgUuJths=;
	h=To:Subject:From:Date:From;
	b=ZIlg1sKorhG4oj+HY6Wd1/YicWsQdG8jhhGCZ9RUlOKmZ40uLagTG5Tm5eUmizWGz
	 ZEGO/tpYXNObpWGgQk5oIiFG2HrErWZVdw8de1tdr47B4Jr9U4So4MYTCrTiSdb00E
	 e5NeElaw38ghW1D89Teu3dYMUcT077r8yAk9n9lVNGgfO/A214ApRm7TWYxl9/0VTj
	 31byfLwjHIWnxeRGyXQrmVMQH+w+SoVlUdDajs5oWvbvUnj51agmZTPkv/gWIGOEg2
	 1/1NMOyZByMzHUG5vidkzFO98Dhd5FGezge4kCZlGTonyx1g4TYneSrsUlNigZDlO1
	 0AzoRN7TKA1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 757D9C54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303528747.29803.14177951358245725667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaee62e547d119e5f6e5e80d224909e7991faa4dd705e1eafe43990e9549fe3e
Date: Fri, 06 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673035287
