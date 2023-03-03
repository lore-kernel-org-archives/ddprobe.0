Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577C01874
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 05:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA27CC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677820565;
	bh=FkrJ4567wEv8iyLygQlfqIDbkFcoJf3FFS0+iztJmZk=;
	h=To:Subject:From:Date:From;
	b=ON8okgiwB3Ur1/CGN1bUWLWR9/bSuTRFkpJ36iLOrqtyN3w8nNENYWVlCbCiteGF2
	 HxYvtF4qH+2RcNVBOiOVYWGLwnIwfAp5mirFWu+hfFUjPHO4QUN3IyTPsuPWm1GSzI
	 BdybhgN9sKfRaWITe7/9g11WdsscV0auG5porTMV894d95G8i0j0OGV5R2wFoFsrad
	 WvNWr1X4A63eMrd8zBlyw3XW8y4Vev8XY7cnl9V57m/Mz5nHvNVD336gisRjgpqcIe
	 wGNfpzwD2NK6tXEcdA3XyP37/DzDVB0z+yJjssoLcBURN4kxyYK3unUxnpWoechFtm
	 XpH9sYd1mJrOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51D1C64EC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 05:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167782056572.9741.4695525200173292850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7e0fbb3ba983b41e76ccf51d373962fe89e39ef6db8bd9ee5084a78f0f0633
Date: Fri, 03 Mar 2023 05:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677820565
