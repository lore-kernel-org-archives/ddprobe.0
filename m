Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60A6AD54
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 731D5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668523854;
	bh=WYVhf8RnPwBBQPb3UEXRteuAtXAqAxJiCdCdAKVCa9U=;
	h=To:Subject:From:Date:From;
	b=L+AvNREKHb3cvbqcLlcmGn08ZSRSgafBkYOkXEYS65jcQpCGhvL/hkuYmYZR++KVP
	 Cuqod3GNRVpK51OPkLQM+MXEqkoUnc+JzoBhUgjQeDikmRaSLfXB4ZSXVVFRgQG/sK
	 3pPZ8v4XFpURnJy8t25zvd9pekrWGVpVUbkXzWaI/MZHCEBrHbUSTmXjVhEiFFgmq8
	 bR0frG0FNTosg4o5QqJZDzdbo2yrWh2+VgSbIbAuwKLb1R7ggq7OGa23jutHszwFQd
	 Q19Fq/5f9AkMk/FesJWWLdH8wrcKDvg2mIxsmhBO2QKjHp/XQJIFCW8nuUY0Gqwr5y
	 RgCmppPZAYDrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B24CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852385436.23466.15273089223442838609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbaa65c7e411d6e157bb7333f526865c81ea517cc031cfa05de687956504275
Date: Tue, 15 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668523854
