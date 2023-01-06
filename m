Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F962770E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F17BC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673028087;
	bh=pTcJIrMZw5+YbsYhcdkdWlC4l/zA5Py61e75WTNO0Uw=;
	h=To:Subject:From:Date:From;
	b=S6C/JumGLnlaQXfVtcwzmbxiw5C6MJW+ldBnI4mDGsMC65CTnhJymmR5hWJ7UIz85
	 TpaJjr5v9FRU0GLKhyaLZ3djhMUUhX/t14PxRjwSl0l3zwsGLUNvg3qWnyZ9hW2dsC
	 PNVOdgOPYhnoFJPwh4YKYCOVxAEIFWwvSzMK398ehx5bwMy46XhGIHhmwvCNtkIm/U
	 3BrCBwKrQSVbLBzZ06/H6Ytw4qlo+cc+DWRixq6THikCUzUXnRV3pz2fnCLfzFZU+4
	 0p0jabRTlaxL+llN1gckw8DOt7aF222Yz7WdsR574bk/SxO51bfXN5yP1sPZqSd9y2
	 bM7eDuV6QOPlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E50C61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167302808742.9380.2012589126457495792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d74fb9bdc1b279e1dd2340e8fbd16ac3442e31b7dd45abd2bdab6102a46a04c
Date: Fri, 06 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673028087
