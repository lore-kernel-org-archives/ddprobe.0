Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96657EC5
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 06:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 003EFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 06:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687759989;
	bh=zibRROvPIXMOpLtDdvRhYTPxfGEqSf4O35yTIVly2DU=;
	h=To:Subject:From:Date:From;
	b=Kc9RMQwBdfCnDbiPM7uHNQ6XPHq1aetD4J36iqPK/U1Fg3UDbEb2WW8uC+/5WGm7z
	 x2+hEh0RpIfkv8rw78xgMbWUPNTk7lH+hrjHfSo8sWC1Wx1lL0+qX4/FSdaxB8QkkQ
	 /5q26+kl+xbDhhB3GKZ5f1dx3ywoBzHiDrjxAmzixkcOf4WcQdSjRRVSFLExo/dt5A
	 kdHTx1xQfvrbq4m7MYLbDOyWKmnOiAP5ccnJrfEx8F9A8DNL+fayO3KCNqz5aUjsJH
	 TnkV6pLjZMd403vAdsrRCya3CwxzSjpZH7YEbQYQRdNjjsDaHkqlvLOwZeyIbJt5CU
	 Al4QKjrY5KA1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9141EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 06:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168775998880.7586.6221685152418790268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b6c7788d2d6c2c859c3307df6215cde68182d8bee945c4bbc7ab11645732cf
Date: Mon, 26 Jun 2023 06:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687759988
