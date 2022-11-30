Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE64B367
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7692BC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669767054;
	bh=NRB9v622b3SasInsW/jmA5PvJ83LiyOmUiH+RZiE2SQ=;
	h=To:Subject:From:Date:From;
	b=N9pnjRFSAnzoBl4gB8hBehzxoBjmC0Tl6plPSZIL02p0gn0Gfc5T9Xa1Wzv5NGOR1
	 jn4EGlK1AlS9DviMetNNkzr1QDdPrenTOWSe/5Vre6IQDnynkSnCLj760n/D0GdnA4
	 xWXILGO3ckeuIlUBatBI9Xk/szuaMZEinpvMjs+qlZJkb17lQ6VwpuplX+yLiG2xB4
	 BUVY+aAUsWlk5wNb06O1RHnXLlefUPzoxeupJXG5TY3eyiinS73LXvKHoqGj1UCkSf
	 LPDZwWVxk36TvE/dbj8hVBALVmv0MGh6Ojgc5WNfjdYReir0JPikUNV74U2qF3I3fF
	 0iPVQCxnL8hHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB82C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976705436.13712.12248895014535523651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e358f50b985e6da3278fc70c9c223501f0e43da14596dde55c6a728a65dbe1
Date: Wed, 30 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669767054
