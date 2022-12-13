Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E958E15B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E46AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670892687;
	bh=RS+6YfHWiE97B5dcEyXFio8fGaTe3AFmjUPmXyqTdKo=;
	h=To:Subject:From:Date:From;
	b=dhqQo1GCx+kqr0Wcnm5G1fNLZAq1HpUSBbTtJFpbTYuLQEprIneTCwU1w21pe+ttE
	 QSRLf5v3YkJJU8Ko9tToDO+AA0njUfGVuRrBtzuxUSdEeWZjJj9G3oOaHp3rAeLQ9E
	 aT/J3FC9YpKZH+RS3JBWUd91VxRXQkcIlBiaIDsve9XNd7dKKGkDkWZ0wfQ2BoXmYL
	 I8DS1gDKEyl3Vm7qmI3/vMWOFSbcPZsqvQ1xIIKcoHjOxWV9gg9MJiEErA4awGJX8V
	 JCRUtd2DyEp0VNiWxSVaGrDIqBLEZKJ/ffE8cTzfRqyg9s7zO8f9rCSoxJ4bXruyR4
	 7LStpv5hwciVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACA9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089268740.11209.10295344370997229749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66225d836695ba90e449e678bdf062f3c0a43829937c12b5f2541ca1a251118d
Date: Tue, 13 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670892687
