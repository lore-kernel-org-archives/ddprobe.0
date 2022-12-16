Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F29E371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93B0FC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671170487;
	bh=1t5FTV32/hHP49O7Lvh7f7gZTSy3O6lYDC+ywHWTdRM=;
	h=To:Subject:From:Date:From;
	b=QmK5hRTcYMLO6rDZ4FagTe5bAUFJ8SpLXpHVDscQvFfDJ+phxaG5dYwkRuJNr4IcN
	 PB9zdFn+albkFBfIlyg+h+Hh1p5HBbqce3ZSO+7iPDc2I3ijAW/lG2PjfZWXeVSiHq
	 DQ8vH4H5YoZPts1xZ7TR0thXe44ZTfCvFCWPbzAIoz9S6EpSmPUO4L/SrNJ+tpLWxY
	 NfXzxGa2pdH1c1Zxr+sC3FU/WxfFqhKru4m9S9o4lJ0MB0t8pqqXEKTQlqYIZ8KziG
	 2MaxWQHJmXUYK0DeU3ZH/s/xzice0nJjhBFpsj4SNr73jCSrUCcZQjE18OuGgRPhhl
	 Ri/NKyoM3ycZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E1DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117048745.13886.2317292858241770019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8963342d3f72111bf6ae1e4135d3074643081c5c81ae641110b53913d5c21f
Date: Fri, 16 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671170487
