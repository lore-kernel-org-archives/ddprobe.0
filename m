Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1683A29
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782D9C433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667454654;
	bh=sMO4Dq/epLIqWYVaWfuCqC1BJlRCFbvyEArDV+1mcf8=;
	h=To:Subject:From:Date:From;
	b=G2GfKwtf24hjJ9zzG+tG94rJ8U3aWCJLd9T+gRhSGjR01dMLnHcjH4VOAF7I8+90k
	 KF0vXEVqLfAcqYij3pr9RwGz3Zgp8uGemRI9LH+LGI+fn7JABKHNPh+oKukSLu/Cuu
	 YucA+KGtBiZY/M4zHcB5nmUOaD5+ZIJ1/ssMGQXRapZNXoPv+YMLR0XXCvkNcbWoLO
	 WHV69i3a7uHKEBJg3vny8CXvEO3EUSI4onQoe4zm0lVOxe2Y0XENKi3pCkAF5+ifp6
	 Gl/32nnjTtLYFcc6nX+wEIw6ZLpNAd5mRmkYwechM0Fr8mtAKQksVvqZyWVNvoIxck
	 ZYjbUjIxMsppA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576CFC433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166745465434.11762.1700319769681006859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69150dc936d13e0d20949b85be4f4fa1d7a093a4a2bdce07e4af2eab871a458f
Date: Thu, 03 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667454654
