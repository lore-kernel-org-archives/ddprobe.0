Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B56CB63B0
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB73C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669038654;
	bh=YMe8MhgHlwUG0e8e/DJWFn32qOY2X1of6ZLgcfiFeO8=;
	h=To:Subject:From:Date:From;
	b=Rf2gG703eXnAjZ0VBGQtvSoDvpBIV7F/n9g2/Fb4MFdwdx4xITtETFxao8mzQfLjZ
	 qtbisH3G1dIMmGjqVHuZGSTKetaR7VYAwc25blAHNPXrxONcqmK3JHj/PgKDSBIpmT
	 +Uu+7BJGKdScfmN9qbElVu71eF3GJbp/8igrzsaLxpGsEA0Ze0JulYpZqdw2rnNJOo
	 dV7GdzpwO1Kk+bMcqMz9zhzauDJ6JzNW/giqLE0hh/3VhHKABxjXj6puYhSZQnbI2O
	 TqHLyaM0+UfbWKXLC8P22ASrPbg08Un1t//XFPjTdkuhmRcfB55rxRETrtMmRYJS/x
	 wGqMYxjdcXFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E2DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166903865432.2098.15146850983984975295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336e9c9302faa71dc18e5aa453d630534e3034f8068c5dbc315d53e2987e6578
Date: Mon, 21 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669038654
