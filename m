Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9FA7EC
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A624BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673601087;
	bh=Vw8p13NEo4GXt3U8eSQd/OyauGo8nb7gJjCZ6WEUUXQ=;
	h=To:Subject:From:Date:From;
	b=qXzWC7+Knq6KsTYqPDY/vwmCGVS7BK4gfEVwCwoyVwem+IyP1v/Z6vAL18a3eM+rp
	 vAB0QXUs+SiinV5I7/QEbnnkZlG62BybVveCSM2YxwAI+KP+RDz3uLasH7mIwETsZi
	 cwa7B+3aTDj6nJBsCLLZt+gbPVOs4HXznpikbXDGVVDpwHEg5gr9s5RxcIxMC/I5iA
	 RVQGpzvsx3UpKIMY5NrWZAwFap23NJlnbKP8lxMHAu9Qml1K7YKjFMko4EdsIXlIYZ
	 +hbc70BEEEq4Hz05/D2eFKVcrqj/oo1Dn84ZlZpqwqyAwP7Y3jGhAKPFlArfdk3M2L
	 bFXaNUYpFrc1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88ED7C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360108755.21349.363153270017456163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481a206a16a9f7501ae5c53c450ab76614e2a6ad6bc682dcb8caf686dfd82023
Date: Fri, 13 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673601087
