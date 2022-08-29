Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B6817C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF88C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661735452;
	bh=oI6BX6G7mQAyAVzPKXlUXY8coh70hp6GAmeA7yPB9aw=;
	h=To:Subject:From:Date:From;
	b=SZyCZ7mRf6rjZxwA8jmWPU36UTC2ir6XeSR6/A22dfwpCkW68uhp8s7T0d08IgHEZ
	 fknPsOIizDr7J15hEDIXPCYZF1hBRfeGeQQcKC0CoPP97e3SL0t1HhQB8bi3yq13fu
	 71+oVZL1qxdhD30RWYroG0NkSlLyMBWnVWoySn65npGvQBwOqtyHO4mPnwXEUcwpQa
	 HCneiwzzrQ8PRZ5b9X+poD5k9wOzCsXtH4w7QCqe6+ceVFsmLZOYh9PPwuRZOarrz6
	 xTNNqPxJK1sVXY42FfpMvHwJ2LNZfKIP6aUCzqZs+LRC3jaJb6puavVpffALOKfKXJ
	 83FRTmmppdiFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617B3ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 01:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173545238.22825.5272592207475645606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cb49f6c6a52387d90db7f2e8ba104dfcb73fb7062e26f35caa50b67c141f50
Date: Mon, 29 Aug 2022 01:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661735452
