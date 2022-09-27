Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5E44C86
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72232C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664320253;
	bh=fVWcoNiKRo+MT3mmn8BmVNM4yGAjQ8atFvGYzgdlQY8=;
	h=To:Subject:From:Date:From;
	b=RL7NMrCZXUopCUAknzE+0t1OQbxfsaxQabUiErMCJ1b1CATJXP2yL83Qmk/TN7uQG
	 ZLfXICzvs9OdEV48aAW9pr0kqs6YaAfUopaSvzsbSNTmSDTcxkE1vDHl4K6qYg8jl+
	 apz/hUxlVGaoEWihSLwTXAXMWV+uQNplEKDpk9i5MY2E7F715cmJsrHky9wqHcjOd5
	 w3YRfl20HHDKpRY+P2+15ZkhVo19z+EMK1KLU9p0Boi14jV+yZnJyfgjZ7Yqu/61J5
	 u2MPMrRLdi4C/pfWJYxs4i/GEycVb5TFnL2NoVz/wo0CumyDzbOibmN+RZFAD3TQz/
	 YFayq/g5ykADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EA7C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166432025332.1013.8676328561714009928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a418d6cf7d1990eeeb2f5870c8be52110982444d1c5a8ef358e1d44a8d1d4d73
Date: Tue, 27 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664320253
