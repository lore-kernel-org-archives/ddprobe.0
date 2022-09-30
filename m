Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7EFA7B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717FEC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664523053;
	bh=7gF7WF9xyqahIQoRLWcNrtYGQYevhelzXlPu2FTbJ9U=;
	h=To:Subject:From:Date:From;
	b=KpqyaGtPNqtx5jUWIsK9XEHqiAbRMYkdbURHrercvYuW63rNoVdbpqFABEJhSx76r
	 bAZtssX5q/QstDMhIQCKvQV8Xbq47fU2dTvJCIojNCqABtZEUJ+pebdk6e9hBPTAP6
	 32wuVbSu7sjqEg+m2CXqepJsgKxZcSNwvpOQzz+bd8578kPZoZN1GTj6Zzelhx+jI5
	 b7YtApf9fwSJMcx1U2RDstpcWXQkP94/Le9gpklb2UXQiIVDB+pczr3pWOfVDRV/EF
	 H3SaFI4p+qwKNEfImwt+CsZlE7O4z/Zxj0ubk1fc2ISyY8bHBKWUTYnnHkGvCGs5cy
	 xvZvZCXQs3NSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58803C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452305333.7733.6056311270646507956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78b09e2e7c91e6917a5df82526e5f178939eb964350022b500332a4990b0ae5
Date: Fri, 30 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664523053
