Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D78F187F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3718C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674847385;
	bh=95xBxBVC6K4H+5wL9t68Y/D8oFhPsF2H9zregt9b9gc=;
	h=To:Subject:From:Date:From;
	b=VM/3WvWhR3pJsQ9pqC/WngTPtCom0vuzQ16Mg1YqO4qcptfALzBGN8dbLcd/sig+d
	 7Lv4Yc2GvkkzM9BLar0gEgJzIaoascj/TFVq897ANwWpRjnKezqlkacA8i/JPDjnvK
	 lQyLJLwHEvV6EEikUd5HvGu2BsQKxjfQnRoar+Lv4gNTb3bsA4VerI8py+M+7Vsz8l
	 XAHslnyfQYy7/TuwEjok2BKuhkeexes1Sl4Wac96br79HK2u/gHK8jzWUNbaLalpSd
	 zhXrgYX+yOKXxB7Wqy0g67J5W1PIM21TZ4Cp9e5JoB3ZmkhsA3tCHPgK1eTZf7ajLo
	 m27LQSkOAUcxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C187DC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 19:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484738577.29688.6191440071408635788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce58ceab78322a2a04eeca5432636aa6500b37cdf381fd9a8f80449f012e5472
Date: Fri, 27 Jan 2023 19:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674847385
