Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0791FA9
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B176C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669975854;
	bh=nHX6MKuof7q8nVTYRHFh+dg9/ZhUgqeB1I8F+UTj1G4=;
	h=To:Subject:From:Date:From;
	b=nvxmcNh9H12bmexXEXmGKWdsG1iKR/YJ4ULXt+8yoK5hl4IJY1Kc9Y2o7+eWRzTKY
	 02gwJcEMIWvHeHEWOoZbZGJNekCCOHhXsGIjiOp8RcXEE/5cw4Cejq7IlIVeHs0gVF
	 9gGERM2GvD/XJeZc5pVXKq9paGub4IUNalXyAq5bma4Qk+Utvica5X41h4vLOdlbF0
	 zuIqrQx4Bj/NxC1uJc0s5jyt9DAbl46VkmqiqTmUr1m4sOuqqht76z90M+8rZ3eMaZ
	 rOqyuASJvvj8Xw3MAdNW8aqmBs023nwZ45S6qj2ebUc2ZRCvyPANEXz6CiYQzqcDJa
	 NT+2xdLDC50qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E64C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997585432.31878.11846689130867396349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0354fc8fab9ba257e44fe87b35992aa4b079cd5babb77edd49d5ed953d58bf6e
Date: Fri, 02 Dec 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669975854
