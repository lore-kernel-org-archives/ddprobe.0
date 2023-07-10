Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E1A125BF
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE409C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689004028;
	bh=rsTwPPPHM2wdGqiLx+emKjm7+Kyz2cJjiN7+o+iQlss=;
	h=To:Subject:From:Date:From;
	b=nt2fqv4GlWp4Rgb41nJHi/hOwouYCb+jYZ5p2kF/7Gxq4YYQD05Q8tRDJckP87buZ
	 WqlHwt19gbG7B1IGdDzLFWX/4oAkfM9GcUu+yEzC2tWsfvZq7kZefIOmIZ6OUJXV+Q
	 2RlDkAa5++Vc1CuEWqYauEoVKKRpPLQ2YMrjOqAW37BnDlgEaYTfU1g1mHIoYuBpFx
	 cPvPnG4LABzQv/BcomDeErHsXrSCh5SMHg0WRs+mEVOEDZS94K8vnmXHxUqLoN3hW4
	 QOvkflfqOimdgGqrbB8ME1ABOkSBgbTcpCDiknL1cNQFdikhVJrdDMYI5f+mS4Z9JQ
	 /RXUiMqu3VaGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42AEEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168900402866.30178.11779113750820938071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a03e1684ffff337f786493879ae2feca4469cef47cf17ff84e882124bfa51b1
Date: Mon, 10 Jul 2023 15:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689004028
