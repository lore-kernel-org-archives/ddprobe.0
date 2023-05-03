Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE851870
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 10:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E69B6C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 10:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683111545;
	bh=n2loFFNwDv7SVC5s5cVLbClHQLkSfn7TarH6/sUrZQs=;
	h=To:Subject:From:Date:From;
	b=k52w7zSFqI9i3dzIWkXY1ZR7QG6/pKslceZ3OMCendx5WmJKhtI7v50EzSZB2llXk
	 l4UclYgPlTLAmLSKEhtole+NWY8otpZVrnXFAzKd1WWiJYBAcxv2wd5enCsmJ9zxR7
	 Yd7mLtT/Tf7mYrXoZac3iDxQYylW91uRC+QWa0PqKPIzNEtL0WU711eTgQ5NOZjJlr
	 Zmb+zI0p9vFS2vYAdrDV73bL4i04VrNNzkHrHyFSLk0amo9NPf7wAaP9frUuB+K/kc
	 exDUp98WXabm99gJVDeejRXRh2TLg9HBOW+Ie3X6/HPtSZpSAM463xKdJ5qh/U887V
	 JxPBSjch2UKIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBAEC77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 10:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168311154576.32158.9166944887859474531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1d8ad313dd4c9dc1075670add8eddbc0723f829b07194873496b98051e1a6d
Date: Wed, 03 May 2023 10:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683111545
