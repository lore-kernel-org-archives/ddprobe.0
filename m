Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D748BE3
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D071CC4339B
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683638465;
	bh=I1/yqhkqIQGW7MbfDHiEB1SzIgm3pHJE7rlXa1z0zSo=;
	h=To:Subject:From:Date:From;
	b=X7FcNooYPD2h0YRmuhgmttT22Ycr+dSIM/SL59d+n4ashMV7QSwGcxU5MUSdHfnqk
	 YIyHI5UEsP7CQ7J0mdnvqixYSfhkjzHyLewQQLIZ/jB4d2ZtFE7hNamJEZif7T/W1u
	 ZS+7WnboujvyYrUXOQUmQm/azlGnjPirH6CN6zWDMCdcB/JtwB5l8jq74sQflJEhWS
	 W+uUto0W9gCEwbw3k5Gr+WOq2pTGxXj+2aoWnPRQ33udoYFkxgAD4O9NOtSi+K26uB
	 uraTGB0r+1TNBeI/d8qnrQ0FefenXjjkQhD9rzSQJiHfFoXGjRdG8bgPpqcStVxBOK
	 Xnqu2AWqpZJrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB3EC77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 13:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168363846576.30613.8979368110093313521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0750c6542528e82a063bc5d1f03542493c3d71b17ee986a95c7867f2726384f
Date: Tue, 09 May 2023 13:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683638465
