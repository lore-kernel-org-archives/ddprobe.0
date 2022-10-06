Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57A2620
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EA6C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665016853;
	bh=oGlEDU7Xy1G+uqinrCCiXnTMNwwmllIfij92l+7OERI=;
	h=To:Subject:From:Date:From;
	b=U9o0lVHh+YsEVdUSourAt9YgCuF0l0sZu7ZcF0OL1ALkUQmHWqTA07R+VuyACVTGk
	 8fMup4iCMxGN9tofEMshQxnadYAPZu3rI4BIriQkHZZChjZ+ZtI011SOF7ahVsCP7y
	 JZY269w9yhTd9rOfxEFio3z92mg6NYKvLhQizVucpAFhpb1DCYiWoQM2dA/Yb2uIxh
	 qpcdDKY+1dG8/WZzGf5WOLYDyNxd9fnVPR+QPC3B4lV9c4KUS1dHJLaj69FcHYDhf+
	 qHAXb/Ejs3xvXKwVR/wPYiAVJdbvzeqSkD9JJBrDIEfiEK9cavoIjuCFRl4io629sB
	 7IuUcFgR7ARMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A31C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166501685332.4811.252973830621830159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75f5c43341c875e2d35f4816a42283a91f9d080038ac882a34d415c9187bea6e
Date: Thu, 06 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665016853
