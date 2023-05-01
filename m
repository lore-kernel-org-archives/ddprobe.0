Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393EE8C05
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 21:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA56C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 21:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682977385;
	bh=tZjNIUZ7SXrB4rT5tDDJO+acmcQgdTAMBJ16F7eg3Ik=;
	h=To:Subject:From:Date:From;
	b=IY7mzr1miPOIdVGIXsVZcyXwtSNqca7vLaxL/fYl1k+23p4rK7Z90+RaVdtsrYcqe
	 mJav++P0wS0BiklUYTZg+URdbIFPJy1sLnL/IXSPD3nYvZIHcMvRH6Twb08fh4YoqG
	 SbwPMaCyh8e6hPDnmAzNPQJk9HtHE3DBWKjWE+VIGR5Wz7wuO1ZaxS4UwOgxeFyOlV
	 yvSCA2Tp9lIsEYbxinvI+wlU8JiAyuw4S2HaupR3J3AIlzjlWvg5/DaLlxr7B9mjVC
	 UqGJ9FOybKCqbyfUjicrB9TGXIWYzjmbHFAixk6bpIHJNnHaIGkgujMG9GgJtbQYY4
	 DXYCTVQqB90Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B939DC77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 21:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168297738574.17286.3152736936102576339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c6e5c7d07e779df6c6b9677c0162eb4b9c8442f6e847fed44df6ae1674df6b
Date: Mon, 01 May 2023 21:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682977385
