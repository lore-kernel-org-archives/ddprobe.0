Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07474C72
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D3EFC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666198853;
	bh=k1G8C/6mBIqE3/EOyRGE26wMPjnX7ntm0ZoDZZ4l43U=;
	h=To:Subject:From:Date:From;
	b=DFcRamyCuITybowQz8kEXDSf/Zj+QsKc+LABkmBhQrXeI+EysrV8ynIOs53PA3P3L
	 cVTovx++FJQaL+hmsu8+c0aE2BfZpp/+W5o93zXjIjub0DBXNCcg4ywrjK5+ptfCl6
	 A/wTxxUKSccoBKqFQDcYLhV1wcEijUmu8YNPkm9o/EOlEes4QHxK+xoWnkDTqVycLr
	 +JBWqyzYNX0+wvIX0K+QhkOQsCWkVi0xSLEJ8ew3HFqsLtBxtl2sZaRGd/Q/sYe5N6
	 +XEluxAAuQZPGGtzPMrm5jk6E/mC0jB2Z+IS0iFC0fQH67OvTChMhlwdGrH/4bT5YE
	 eLYvctVnjMNWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B23C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619885333.5859.7255703590342616088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917f66c92c15f83d2c5123a716393810fa18a3f4938c1e8a918e67dab952cbeb
Date: Wed, 19 Oct 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666198853
