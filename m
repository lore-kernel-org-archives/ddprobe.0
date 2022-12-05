Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61CF107B1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CDA0C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670266854;
	bh=m4/nyTTceMd6I2qr9FNQLtH/jKpntgO/PBQGANz8/pk=;
	h=To:Subject:From:Date:From;
	b=hax88EDOsmX2vxdw2biCUFC8FrVCM3bSurA3lsX84GLiJUXKSfNP/gs9WoYBturPf
	 9TUbAmZz8zQe4QCtCtB71fsIdpQR6sI27k3TkZD20EJj+H5Z1o3RR2CTq9hFbbRiYC
	 SV71KyGqUhMQ0+XaMoL7TrrsukTe4nInSdScFgVa8K2zGmBc+IDWNkCWo4JuUGLPVl
	 ZBhTs4K6jULnau38Z/xCVBW6YVQx/jDEc6LoscZkW7V9LWY2AzPAyR3CQq2609K1bZ
	 REERT79YsfhHEnE5a0HIxGSWsYlF4eGRWmqkcXxNCPuc/4qtfTNk1yBdaIgcCaEizu
	 wTYyUk+PE5dxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BE2C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026685438.14444.14872644879229923742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac602a34d9e2c4e61ef54526bc5acc1e0b5379b1e7c2ceafd4509f73889f0780
Date: Mon, 05 Dec 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670266854
