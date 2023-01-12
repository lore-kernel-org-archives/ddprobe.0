Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D2218D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBCBC433F1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673541087;
	bh=NaKJC8x5GXS+0Bgye1bj+mWY/Z91HZaH0BO2XBC3qBI=;
	h=To:Subject:From:Date:From;
	b=S0KxIaCqwCJpr2+6RK/32ABTZhRx/YpDKbSuQZbTrvpOuTkN8/9NW2jSRNB/mNpCc
	 XfQmh8b/WkpkPC7NajElgf6CpBeDVYSD+Ha4y9wTyTd5czlniUYyf4dDZgxOFXD4ra
	 WBGyZqpu5f28k/woQAj/9iDC1DJc2bWWayJa30Xxcr5FwvI3M6JJT2tVaYD29YQ3qz
	 KXZ82TGt1gMGd6IKukXUiSHOZJQH1gaVaPPWuNsTYA9xcOtthZg2hhtF8TpGUFe8E9
	 WvI3Q8jt6IKETmz8+Q7f7++VFNgp6S3B0xyzQEldmx/O9TgAlzELBehwp66xHo07tv
	 0r7/SMgnlWCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BA67C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354108749.26551.11767828198959797661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7c65dcbd3ec299d69dfda64de887068a1dfb04d6d10d0cfdf6360bbe2dbe58
Date: Thu, 12 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673541087
