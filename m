Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DE5F1369
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 05:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09C1C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 05:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693719248;
	bh=2ZBmzvW+z38vmZHOFSRcboTJE94u8S/XmAprFSyE7LI=;
	h=To:Subject:From:Date:From;
	b=axLpNCKRgnGaEHNfWs+IEndKtXRQfOV022UqDdez1gBKkLCyN4rZQBURQMaHrqh/R
	 g37xwB89TAlE92sALn8Pp1CpgxTtTwnXkNQmC8vYJZ1ixGo876b62yw4y79WGPG6nq
	 Hs4zWaj7OVuPb7e4tbEpUiF2ahD751nYNPWFAF0Tumkw+iwjtUPewAl4e/HZxYkFr7
	 DSLwhSyT3e5A4VhPKzozPsIV2EzKjmeu+vK34dWRqNtRITAE36K9e+A4JV9mMag81O
	 +Jl4EV0CjjJS9XYNzIb5zhJaxCY+QgBmPzw7D6vxJLDZSTCw9vXqsbY+zgozAGcALO
	 utGfOwJ2IsMnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47CAC83F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 05:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169371924873.7207.5261772848547697939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7950f20f7cf61e874d5578f8ba7bbd2efa5b86bfd5b5fcf36c8941dd2c9837e0
Date: Sun, 03 Sep 2023 05:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693719248
