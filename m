Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90DB7E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F95EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671573087;
	bh=EdofcJ+MbzdDV/VqLRGyaDVnRNKRC3dYmSQHtNjCOOI=;
	h=To:Subject:From:Date:From;
	b=nH/ER++FRfhKMbpKG97CAPoy7a1g8QEMzsUbqN2lOq2vzOqSv/LH8OJvGaOBmuX4i
	 jjnD2Z+aY43D81jc0pOZEHzM55uDxXdO7ozuKpCHhrDTrG/MbLLb9l3GlbFkRVUEst
	 ZwhbYBl+bnoVndUXtCNCjhdrP06zQpcL1BuRkJwz64DF8g3R6eOuGh/Z9vEBi0sbBq
	 Q9DkQsnGgF1UqdHGv83JpFy623gmspceMKnIjAOUdSry0XiRliR4O9diHQ+G5gz6g6
	 JOaqE45oTdbI9WHvBmsOX1VnAEg0tSFyaPE/JunoVRXKUk84qUCZerg4rOT4pB45A/
	 zMW9DiYd4mezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D96C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157308740.5596.17082078605222324010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050a3c271a6ea95cc3c187f2e8340105d59dcdcc6bd9193d64c83da903a043a6
Date: Tue, 20 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671573087
