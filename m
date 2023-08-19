Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1084C8D
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 14:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AE4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692454448;
	bh=Mlg6Q+75U6K6VPJyf2YTQrAkGz8va0tvTHaKsLW4j6U=;
	h=To:Subject:From:Date:From;
	b=Z81JmysMv1OCdBc1GjxuEOqygt9ZnQUO701fcLWz6aCyUfB+91COpnQ1LuuSsyY3A
	 saTXcF/am6qgfs9+8YdJCpdfOSS4aHoReFBV0GdXk0qymWI0Xy+fZOczKLOVNMIEav
	 9vf7X4iYaoYETQB0UbAVMFpvSuGC8scHVufJ+wlpX5xqiV+BQCJpxXBCPoxX1ZiXIn
	 AS4JFzpnwQZ3hjwwr0QAwcqIJgxXmsfJsQSrJdKdU+gjOp9Wm/6N44YCFwxAD3GgdZ
	 c4fzxHKNMztdm1Jk+jDcHFVccr5+h/7IGJ2MEUvzwH+1w+RsBbJeh8EINCCtUXlHMR
	 sZ5uSiWz9XNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4420EE4993
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169245444866.17412.11409324633060899894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52e98e9f34549df7c9706b0dfc64ff1816cfba4459ccb205a1a2ec965d6ed0c
Date: Sat, 19 Aug 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692454448
