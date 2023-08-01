Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6069F263AD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 21:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7906C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 21:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690925528;
	bh=7k8kqcFZnpZRvYOAc1caZXdyybz6m6fWLC2ROOqZ5xQ=;
	h=To:Subject:From:Date:From;
	b=pj+3dZ27vI/rFqKDnzLxsrZih6c6ZOaXPTcMFjHHhZXHInmb7jmd4V0zr94Cj3Fwl
	 APXKfPogb0gHJMrQHaaMQQ3KqbjsaLP0UVUO6KQgqrcyLF3o0HmyjCo0ow6ov1ip65
	 TtdCm7RD3rDo8Y9BKuj0rpXCy4A6d6agcDC5jvmZU468tbPsNtegGdrkYYF0CjH4GT
	 Ej1u5/ddsDt0b6HEixalrCusAis3WyEIhWi6BibtjfFne0SItSfEHBybkY9deDKiRX
	 zdu0M1j33UYdK8R0uyiSAlfrM3Mto9U7zkNGmrSDHSVE1QO5XSpZM2k39KWCTWy6aB
	 UmxQhcU0nuXpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC569C0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 21:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169092552875.11903.215618737581394220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf485ca51c936f92638501fb198f593a1be45a7a3cd75c0de43fbd966c6bbb6
Date: Tue, 01 Aug 2023 21:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690925528
