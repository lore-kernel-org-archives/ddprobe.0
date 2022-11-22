Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4AC77E
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 660A4C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669080054;
	bh=Yx/wwdNHCxOoyVpkgVpdGHHnRILlN2Njmg8m4Buj6FU=;
	h=To:Subject:From:Date:From;
	b=ExgdLRo/zdVkbKFyZKHQ97posCTtjShwK9BWwYlWlhRtt8kRDxBwAzihQw2xEfyi9
	 SYsGMssVPn87qIB8f9+lRetWS07mFo+XJCkZdiz9fbCdn97GvoaDM0OHjVrH6v/Blx
	 OufYeLm/hSAyZtQ6srIfS8fJoTkt6gC+F+nD1FYRtNrr9sKILBiUxUs+UbR+/2BY1M
	 mt+fZf6goQvjZkfsziQhLCdsx6TXpFQjNpJA6/TLrosu1NekOQ4EaNQ075AWFoBzBH
	 000yxD8yd/eVxAbrs6KLz2abImgroktHDfz70Zt1xBDKNe3NV7N5Jmc4wOQokwAQgE
	 7IofelcjXHQ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC72C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166908005431.15775.9840654739417091838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9872608654b959e61858e7be85d10a1c7d22fca6aababaf1925bd21a542086
Date: Tue, 22 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669080054
