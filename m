Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C0C1C12
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E310C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666045853;
	bh=Su5uH/qHGuUYWbpxvGHsKI0aKbSYNWq6GGcUn4rLeXo=;
	h=To:Subject:From:Date:From;
	b=uq+UUhIUlqVO5atDPyBKHuRWD8toI0k3MHxOTrkDwXqk0GZyB10zEPhyxFSuEO+UC
	 vVkMPP8pyvdAg69xc/C+8XYMrklc9CWWiLDxa6H5OZu6S27dqTJWNUv+sFrY8amLYw
	 t6R8uA7WgNLycPWEtesApT9CBAQrS6ml9GhPYkbTlkWswvIj1L+yoWkAEv65LhnFcA
	 Hp70vWj/O2NTwajO+R1qBB63ZbpItt45eN5N04/Ms95W4j8ORWJp2KqkMIcsciNPzP
	 UQg2w6ptSm5fpleIuO07/KNdxRaDvFeT4I9iZjzeJ095hzhf2hyB8c8ymZdK2n5tzo
	 ewPaxy+Lq/xEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54ABEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166604585333.19519.6085687505571878975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaea13920744415c2a04844ccbcd700e748caecd651f8bf14db833d4d2af0677
Date: Mon, 17 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666045853
