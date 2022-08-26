Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C789A1C17
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75264C433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661509852;
	bh=B2H7TlxSk5/bfrWFWuOvagfltoftnpe3eyptFyE4kKI=;
	h=To:Subject:From:Date:From;
	b=nNoq9k1DY+zn9dIeyCn2gBhC4qIsg9xmXHiFl3Uh/AxSmuW+6lFSfh+mLcniAuM4W
	 BzzS6cjXm6VKmlGHCxdI3BUrbUMFLyEr7Kkkn0SBaxqdHk1WxijN90jXIPky69zdx4
	 A1z2S5Hqe895xqXMHy9bN6f907ZApDmHmtNUXgWcY6QK8/lc+VQE2E6CoA8mhCyJde
	 1NnBxC2CSx2mMDZZpJqcQQchcvZJEUuvEUY80QHQh2bXdT4aVeIOIDLn5pZ46+lgiA
	 /ShPPJH+rvDiJVv6I+TWndblu6tAY3Yo9RiwuNn5sBFDSchLZB+1695m6/79Of2BbN
	 WMK1NxDU1UopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FDFECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150985235.28062.17263982757614616734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5dc56db9d39e81caef01df9a3f3cc7f63b0fe327ea5cb8fd48d82dd716ff94a
Date: Fri, 26 Aug 2022 10:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661509852
