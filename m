Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327F2C8C5
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB9BC433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683323885;
	bh=ptrvdk0Gozg6K7R5dlB3PylXH8RF6dDA8nO637rFjjs=;
	h=To:Subject:From:Date:From;
	b=NJ3XJV/t1ZmdcRm8D18Yhh/0l1NpsYnm7DRtFvYUs2r5dXxidRAyV54FgAeWM4gve
	 PDcK0ZTZr4QunTMoPshniUo7aL4DyGJM7cIxVug/o9J1sGvP9AZWzgT8fjLsp9kUzK
	 Q9dciF+nTWJv5Zw50zw0cFrQc8+8LuXwk2aUn8LMH/rBkUYi8VuC9ej8U2YNSIPkzL
	 1X/bdYKk/F/CFkgsnawLHBTKc/EQvo8Oo7AYD+sY8j2rMIXjWG3w2QbPoqJkCqxvwF
	 iXYEM/iBIfqv+kpI7P7mFvegojKIhfthJXoKxNicA2LhdZc/WNtC8xyeIqHK1dpTVM
	 qKau2Dzz6Jhdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AF4C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 21:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168332388578.29120.7871523779133983806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd58a34559c3b75b979c3912d2442af0c75198f821bed13644471bdcedcc7e06
Date: Fri, 05 May 2023 21:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683323885
