Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA17443B
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D30C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668780054;
	bh=W3cxBRS7zq4nyU1qNAhDOlQJD85mj3ES2Vg1Z+aFsSI=;
	h=To:Subject:From:Date:From;
	b=uRKGXYVFtPXhJMvatOv8Q3tY+35k7Aw4i7IYd1ksqTO+ldrXncQtRY6EApUkktlSx
	 q1l3w1flRpfHXmkS2ldXBhej9iWwsTwxVsmDea24knGDKzzBysfcbK6svEMIhcG4kU
	 k3/go7mHAnYvD8amctlJz3fsO//q/WwAGAesh7AOdSVZrEoLlwMupgAdImjvq22wrd
	 b5t7rvE4F7cA9IJt5uTABWdDlqrd3100Tafy04CBDPy1bMo92y5ob4tpUyUZECOyKk
	 W2Y0JJH99cdV9dz+vYdey6BbkbUweJkiUEEd+sqosKCuRSzSEhjG7AM6mUl1r6+HwV
	 AJsvAgwuEf2kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536F4C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878005433.21202.4210956809951221765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66cc39e215204a115004e9d770c897c3b4a16af225214c0aa7eba2e08f2bfc1
Date: Fri, 18 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668780054
