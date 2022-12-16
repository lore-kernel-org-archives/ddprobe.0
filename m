Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31B8371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B047C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671165087;
	bh=VALmLolEwKFV63xy/771LbIMcv2f6ldCSewM0ASQRDI=;
	h=To:Subject:From:Date:From;
	b=nVm9rgKStFwonNtmBrvF9Xw1NP1JXrVyttndgxydo69wRhFIUv0jB2MYwwfkBgCS6
	 iJ2lddTaBiMvi3FgI1lwRpJk7QDy/7AzAQ3e8Bxj+KXuLpB/tTvlmxU2gNKCq+jXvp
	 WsrMorapxQIVaA6I977avOvypWrz/AI6p9PU8uJEUd1X8zkMsT6nQ18iqGrlSdH4iv
	 8SvqPuonz3MbnXzANDbzxV25IRpYxXmm1JpAlUy4pcluAqO/UrBqV4CzVmOmU29fjF
	 mIj5BM9aYG/Nz9yFdG1QZcpKuD12Diu5GOpJSzOOBS4NFw3RH/3DR04v5A7bd9gX7m
	 eJ+R5NOhjESCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61992C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116508739.25672.10087088144790297456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ec1772028e1f325cabb28b189630e96fc93722cca01c54a21c20c8c7033c26
Date: Fri, 16 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671165087
