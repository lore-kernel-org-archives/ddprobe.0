Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AE0F9D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09EFC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687378388;
	bh=nxkzknwvmOkBi5cQDm89Li9q7aZibp3di0aTEhjayIY=;
	h=To:Subject:From:Date:From;
	b=hZ5tApclBsW3cm+kI+Jvqv3wYpHQMrOSnUkxrBvWEA3E1Se+ElRefslvVs9CTssVY
	 RgEjVsUro7M1rqh0fkxKSKFmY0guDI8F3aq4gCm75h38mX0s0jjxsjqt5gIfUxe7zq
	 YNmCkyBvzlFAgPsRtYxV+qo6WVddiztAzrCY0ZNfz68/tOWNpp6nnZ0xC8ZpSla4jr
	 DjkopMToZD2hm7/doo6j8nsi28NGLw+PLq6ccvT5EdlRHpM6VpEgzDUJWqNNmGiY08
	 3DHeoHt8yW/HSwUrp4sJMoEBW6rEBhKC+WMrBuRvXCLKeXVM85fAx+ORKbnXdMpHPh
	 psbzwIn9dwgPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3075EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 20:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168737838872.19645.11623116927610808795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9768c75fd08b94929aace5908cee91ce9c03663e05827e354c53d11f0e93da20
Date: Wed, 21 Jun 2023 20:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687378388
