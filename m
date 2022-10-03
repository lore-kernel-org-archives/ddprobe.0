Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE1617C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63E6AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664793053;
	bh=lnxF2krtetHJV/3SBrQw/z5poMWo+m+ZCTA9Mv7jtzo=;
	h=To:Subject:From:Date:From;
	b=q4y3SWrWzw4qzPGI0vYCsBYzIQhk/kHSAsxNXHBSEpw75z78zZUOs9y8+QUXCz3Wd
	 dsMEBDIcvbZi4IQiYYwsMofyGwB3WEy8XSecvuX5JEBnhaCtSOWqxTe+juhle/Y7iX
	 Q4V9ftAul7fAP09BeqUkhZVquD5Rb0W7mlOFGlrVHWrLdrUNftyqXamMqjH4NZdZ7J
	 JDTSqhzDSxPDAGQOzxH46tGGKv8HUbDKC10LPwrIyq/S6v+jCnnwBssNjsFXIcpkp4
	 tsRVtaKDZdbA7dK/jBarIAZHm6q6l7zdCkOweRSuvRuEGF5Ya2V9OdH62lTvoo3Hkr
	 YquaF5WBMsRQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DE63C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479305331.13276.3621880940761662439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad900958928b8622af02d57ae88b6b3a14dae283bd150d5baac620f9fab6e8d6
Date: Mon, 03 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664793053
