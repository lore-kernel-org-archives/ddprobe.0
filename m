Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FE28492
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 13:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F55C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 13:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681997225;
	bh=umqGc8f0HvkUZ/AgvV/58dZ2u4ICyEiEvCRn3MwrvxU=;
	h=To:Subject:From:Date:From;
	b=Ycx5M/WFLvj82CWro1jG3VUNRoKYxRw0E2zx+nl9i+6w2BSnhpce8D+X+YzZ89nat
	 HLsKxPLbWSaANKhABpK8BLL8ONUK3Tg0ppFJS5U74Kjq43uH29ncqWITE/4mnJIAUN
	 rnYYUNw7Pogkanusw7QKAJ8NqsPTKan1vdvm5wrErWjJ+wnbkIxbuzPdIWneUOk5Qh
	 gTQEaTp4K1PC1V+dYDgqZxKDAKFjGe35P5Mi5Y0UvcZrJj8RkHcuuehfoIaNQHm1Tr
	 pEYdRQdzLqaw8zCOwnmpHYs/TjDuztRlPyw5KMfJ7Q/inoButILuReXddeGzWvCDD7
	 h6VZIXcVj29zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA36DC77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 13:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168199722575.3275.6222624937600192615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c910c4ffcc36d27a21cf5efc3019cc6296a128c6b3b2aac13dc2f03c2347d802
Date: Thu, 20 Apr 2023 13:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681997225
