Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7848C1C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDD9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668877254;
	bh=LXeWqUhWgjYaPgVdqu/r/PMvxZeEAAxHW3Gc8VOI574=;
	h=To:Subject:From:Date:From;
	b=qoJddYvX8Dy7Vy6GGswDW3eUwWqyc54Ke/nQJTgPeGu/bFFJy7jiHolO4BbmAsbgS
	 hDWOamn25qLdUSiqMx6easeY6CGQXt0H5asooSCIn+nBxBmOf8eFosKJsm9N5sCfCe
	 RkXbRyuWHIdpZlgtGL9T1j18ZGWcSP/D4LypOfacKxrvtRlm4VuhOIyG0wbDzweCSi
	 OosGCCYB/E0ndqm2qCJ0kwAVsNe+dwIdgQBR8cb0kUODH4k5Vuc6KTDHbHvZcqua9V
	 OB4FifbYeN0Ur/zP8S643AUjRfOSN7qbcxYcT4cNs5dr0tafFS9Dkpt/swC1IXY/k5
	 PweCNQfnYtAMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2FEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887725462.3377.12271219845521800285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd389ef5080ef52612ef25d6d8ce7ab0db6c1a6940d72f68d37cd5c5a9f7dd6e
Date: Sat, 19 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668877254
