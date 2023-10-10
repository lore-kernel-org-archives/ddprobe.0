Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8441F170
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="il87lheW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE3FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696943828;
	bh=Z60d/P+Q7RT9Z+WxeoIiMPmhxfDNoxchdR4coYUmu/U=;
	h=To:Subject:From:Date:From;
	b=il87lheWgi/ULuHxDmCNgkr6Wo/rOMv3iIks/5snOv2xRCuPHTLIGHw+HqlPJYWMY
	 1g/EwF4NKSYMWia7BgbP0Q3/TcFE5ufkHTID3QrNaw5+LM+VViLaPMGmbQolqvP5aQ
	 25nuZxMRnknTPBJekU2SZ1nGi/OXqtwz5J/WZ462QDhtC1ZQ1WVVpqOmBzPq8bx+Or
	 iDTlhkBmI1rxOSo4eTbeLjITS6se+5guG1NOas9lM77bsc1gI2kuY/49KRXACKL3b5
	 UjGdERFazlfR8px1sRdYDgwMGC/xqfvnAzHCUe+rKIaOWvS/KgaLgcuXjujWnwJIAX
	 wyIDsbROBYMvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3310CD80CA
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169694382872.9415.4554852268092881831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5181a91741bb3511cc2088c52ddb6e72a358b438c16dcd2ace7b469deb6ba386
Date: Tue, 10 Oct 2023 13:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696943828
