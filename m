Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49792138F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6CADC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679229905;
	bh=aDkWH+4RNySdUxIjwZpYadAcLoWKAFUeGES8BZca95c=;
	h=To:Subject:From:Date:From;
	b=L2cKLNWYBbC/cMN0EcCe0SbN4ACYShGF6CpL1AiytwrWHpYWQM+4UN7aXbGETCXYG
	 p4T7XGqqEZLPBsM8QcJRtGVkBKV5BkahoO1Q9NvveyXoKr6ktIGAtHXtv+e/d0vniw
	 2QoOhbEuScT6f5M9X6uv5Y+vkqcLSlJf9Uf8i/5ZJ9TFel48/k3U2/Nlwn90tTdkGK
	 euDtpRtfulg3IJg034vz2EmFxZ7qrtE7NWLMExyH0ewVHRsV/AxSM3W7ws3g9gEpxD
	 jgUTHC30Pgbjs+yWENSUuhdIX5pQf4NUXdLYAooMYE9Py6eu4CXjmFkX/ITmKgc/tV
	 8d4W6HNaIadFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C269BC6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167922990578.26086.14102682347354433437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3674d943f14c9699be607284a1a1615f034d71f6a60ca807c9eb8148f96586a6
Date: Sun, 19 Mar 2023 12:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679229905
