Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B0ABE78
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3640C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687539788;
	bh=QUE86lxDmYS3WVKbk2ZSevPZleCZqeWZ8OPkfhNm7w4=;
	h=To:Subject:From:Date:From;
	b=Ql0lN4ZnulidIvDexbswEatVEPBXKcrErtZUQo5cs2BgB08p8ESyLM+Bv4gbj+xaP
	 QNA3hIxhXD8T6ztzy/HHJI4+bWx0K+01pnEoLdiX84+FWfy0+YeA1mx2Bn1Hwhra+e
	 lMIlgxsM8ctHwGT6jm6f6iQCB60jTvChWMKpsxTFidjnuSdlTWhmCzv02LrmQnYGI5
	 wwpzZmqizcQ4TtcA8u9w5+83RtoHnIO96MuC2BZCP7wTgBLZ2CI9cEB92wVRVKrGDk
	 pWMh0v6XpyTzN3Akh4df+Xm37gQHhj/8tBiSBuZZB3l1L0jVbZ5cfoP7LLwutXWbLO
	 c5jhaoCTulRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2950EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753978865.12508.1270327163339262484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406a99a0e8111eb311b659465ba20b0a7570d814925181d45f62a5d0a89f3513
Date: Fri, 23 Jun 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687539788
