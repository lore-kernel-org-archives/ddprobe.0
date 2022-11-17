Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2DF68BE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71320C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668703854;
	bh=LkqvoWi+7mxMm+/JfFvarjhp4vxLE2A7gwLxl1RioR4=;
	h=To:Subject:From:Date:From;
	b=WsNe9LPdM0ljooJbUpwjSZ+U0BEXC+MivkHYdF6VTK94kp4zCy4V/lW0zZ870NyBP
	 Ex3LPxXMdXDGbnIqqd7m4SvW2/4FYDntISDLqCqohrJc9ll/izvTMTmUDPW1g9dkUE
	 yfz02l42QJlrkc0mEMO2XzqZ8EPjsGYv/P/c8Z37PAGOrxRK2EyjD7IBTUfPmFJ8Uo
	 S4KMHqO8Y6VFwHgE/IpyspLJv/WNU75e1Wy/fnqR8bHmBAxtjaatHEm9/uspS8MJgj
	 7meosBqcCya6a93xeiUd1oeaTXKSYsS3NEWIcTBeMbCkQJNLeyV3UCtRoO3T2iEF5k
	 OcDItqt8t4njg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A23C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870385435.28152.2100292487632773732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c02eae06805066796a103b3cd3ec242f6267012311ed27f25afc2b2b2afcbd
Date: Thu, 17 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668703854
