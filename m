Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0A72F3C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C0AC433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667604054;
	bh=Va430pQRyMZ2xi5zTkPnUEbveaKVpPQVKltKg1Voz4I=;
	h=To:Subject:From:Date:From;
	b=SZh8dP5nIVIaT5VKQLWSR/m8TPopKptFlH2rJ2YA0hbma1OWnPk49BnO45Ac8PpXo
	 8TfSS5EYpI5Cq6v6d4vqAsjXJKdN7HTvjpJjAn+jVKaLQx8FdVmgAuyEGBfIh8CsbF
	 BdYuBiNEy+8WqZNhnK4GtmyD81lwHsq6G3sSpZ4GDdlOZA40Z1sRzlvYfyYMnRdk5L
	 YuUvdnbje/hbadS0q2jnGI6bLhrc+32WD6jugyOrvJmnUWoHYUbcGlfdgBAo2JJEM+
	 0r/xmx4Jv1SpCWziey2VIXjDkfevo/SYYYddYr6DxAEJtlH2PVV3wWZu5F3nLtbe6q
	 HpcRgOyD2CTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A5E8C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166760405436.755.17179504346221856257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75e9ed64e4c9aa1569558f6a9b4abba73042ae27d038bc5ce127ac3ebeea300
Date: Fri, 04 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667604054
