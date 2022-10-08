Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B4C10E0
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6B3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665205853;
	bh=2mVG9TRvFi/xJFcEtgEgQ8hZWck2Rm/AgrdcVkv6ka0=;
	h=To:Subject:From:Date:From;
	b=b9yGsxl2anscjwGl+ArH9ftlbV5TPS7FxS01ErQkBXavKHwQ2DldqaKkdrpp7SZmS
	 TwXTdTdgRVXTmE+4hhMz4KfE6IkuSkSk3mDJAPx4LGf0cae1lr9UY+dSlEOFmHqHiG
	 vDg81S3HZHp6yeKthq5WuCzz2PgTSLpGVuYTX1aUeyz1GeGdsNDBtzgPZKf6x+MYO9
	 nemr//iT2JZISigiK+aGRIU69+yDyunZABgmx5j7Cg6vBhqfpFQviPrFpfYfekK80g
	 CikpRmzr5iAdaHaIVkoBLnak/Ia5WjZ5NGlG5wZJFezOExzEbDY8Ls835hvtbtHQhz
	 82zGjjG1yrzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B8DC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166520585332.16020.16536506177741841475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86dfe9ef0156c0e24ba08153f432d2ed1b61cb03c8af78d7dec85cd12f94c26
Date: Sat, 08 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665205853
