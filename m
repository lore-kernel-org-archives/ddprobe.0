Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68D34416
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730ACC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665688253;
	bh=eae38BkOBwsQdw87/WQUy482XxF4RFA4vTAydga0jbU=;
	h=To:Subject:From:Date:From;
	b=XYNGBN/MG3ENzNxFdHupyXXL3k0UOTwuRqswNBJskS8TjnQP1+llpI1j1sMw/S5kd
	 Ws2rESdb9CRYTjh/a1ZDtZk/UAHoL1jw+8NSyWAVCBNBRmt1S0TlCO/AWQ9Sp18p+n
	 Di8/fiXuUvPrSaCIFYj1Qd2C6Rz4n2j0w+FOPg6fEUcJxnHiLlo0T6l4hUAbQ3jfNm
	 kAnU61PBdXW25QPFRg//zwc/HjIK2cdy0rrqBWQlx8Kf5RurzxXByvTa5OXaay9Nv2
	 NTDT0jK94o1il+FwocIS8u7Ia71ZtiVdXZWiqBzedB6P5XExGMJuwah0fFku0gpSjP
	 3lHrwcNZjI6NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AE8C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568825333.1292.15841127745381371630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b14783b809a401ad82b4b9cc752b298a5a662982ee2d6d94809af08dd34829
Date: Thu, 13 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665688253
