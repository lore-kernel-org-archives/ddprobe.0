Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6990010787
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 10:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36DAC433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 10:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685702225;
	bh=lDg9Lb5LAF07TmR2r6Il/L+Qle+5l+XL+mOrMTCAaFY=;
	h=To:Subject:From:Date:From;
	b=XJPCW3F0LFWkAj9Qwg1kKtvl3M+eK1wb+XFuBPhI0V8x0sDfr7cTglIcleuiWsBHN
	 GlY43SGuKcOA+SRYk2gQPwSzNCY7D603Nw67u/XMejKxAHBPkM+22E0PJ8S74cdzTT
	 CF22Fpy03Jf1my9qBUmbNouS+IymRd+rqyIYI/q9dEJiiC7k7BKVAcc/WlnVvofHIU
	 coXGcbdsFsXyIGFm6ma9h6n7t3cCPe1HXWnWTEBjgwfQ6QUp9OEEnVzxKB/o5ejaqu
	 S1zWjr20wJwgbY25VWNAZmTUNyjmNy+yD0cie0oLOY4I7kR4IfI6k1hGzNxxGVO9Kc
	 UZrrutbrfmyCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B38C7EE2C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 10:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168570222578.32697.6648828910961919147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f772f6c2574b5f9d4468227f29f274b5e9d006682f40659b39e741202eef6e
Date: Fri, 02 Jun 2023 10:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685702225
