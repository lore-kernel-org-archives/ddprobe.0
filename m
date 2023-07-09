Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87C771C06
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED964C433C9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688882229;
	bh=P9MsOGq06nK6kZ5qV3GxDA4s7EWw6PkoCfqybWxez9Q=;
	h=To:Subject:From:Date:From;
	b=aSt+7usrEQ1lRgmIIdm7sq57ZMMuoJkipznbFqEZY2qit7PfvaslMdQqGyHtXTG9X
	 qMyQvCslBjo1RZ2RDZqdhysjrRkd7AmsAe12bn8i3EN8kqOfyQfWXrRUeJUQJHL/bS
	 ruVO7i+LrOOyDFThNyCQtcR5PZAYFlN2eM178GwXf5M6jmrfepYa/ZLSul/0C+aEU6
	 MuDNPLh13aghUXyj3s2t+dftWhc8SWZWkYGqrD8XlgcTjRO8/Y5i9pMFqM3ovXNxP0
	 gmufSflIY4d8KAeEXiJfyXj5KMzwBz+04QNMw+irvgzCMpnbkfGA6zdc80JRDzeE8a
	 vy4D+cwNxfl1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0814EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888222883.13085.17428710723609279694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5cee367b219223f96c3b9923bbb0f407aa276422ba83d7f4fbd16aa7804a91
Date: Sun, 09 Jul 2023 05:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688882228
