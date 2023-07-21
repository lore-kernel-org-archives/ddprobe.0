Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68313656
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE228C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689916328;
	bh=jxyLBIxloBSNMCtRwODAoXutpbyuTNzX73pJ5kOJ6RM=;
	h=To:Subject:From:Date:From;
	b=ReAm7i8FgWLmjYlVDWO8OmUfK4tboGml28l2yFnlZfsiXHqO2hXXPdaf6Dqsd9WcI
	 R6Y7MszZvy31Gm1deJY3tT+rV57QzlzYIwgHxyHh/DTN7W5a/JiZl630d0LUt7mTm6
	 8HqsBRPxAUi49E6I5O8TylKwmYYeHV8fn2hYGS78nHM7M0/9rW7FxdrJlMfY+21duH
	 wwtgnloMnG/yM1s6kxEpxOXN0NZVmQ80tl4BVRRBBvricvXWwFCn+Epi9g0fyAo4mA
	 PLFXFK4xhMFOJdULdHzYG4Zv7glEAqshD/WDXznvu9GjjwHN9eMCoEtnEIHEDLw/yE
	 ZoKOKFqmIs63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15E2EB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 05:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168991632869.28850.7858881240385988856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25f40436f15b8beb56a0537c16ca4c971dea8f90427cd3ea2ee994b26d82e10
Date: Fri, 21 Jul 2023 05:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689916328
