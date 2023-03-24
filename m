Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3367E
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC68FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679644865;
	bh=p3ZlaxrbawTE6p1Qqov0GfB/ennf2ufUK6QYbNJu5+g=;
	h=To:Subject:From:Date:From;
	b=jKgwlrRgxfjrcuF6nmcWAaPu8wWq38drmQxSP7yCIQtvp9SGoDX5BkHQxX3lPZNzm
	 6Kv78NMNwrTzRHm763jVjD2d6FyOQZi9I6I56cW95Cgfb31iPsbivQ9ZMxk2xNeW+9
	 BRUdtscZBATIs263P2w5LG6ccuC1ximnJqmdguVRDuoPhE+W043egjThi+u+d/nDiT
	 JuzdWqELbJ+A//PFzSuYZkDb39J6u1K3VeUFQtZuzp9AGn8Pg4deLUP2jDnCrewUBg
	 8XwoNbaHGLnhaxiOpdCw341Z9vOMaEvhMfpaXgbB+e/eS1Cs/Detj6hRDxmtT7IgpS
	 WIVcozWB3dTrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C79C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167964486577.18770.5339046341600903872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b2b20534e42f99d71f7eb3f235f58dc7169170fd737ba8e3eb0f77051790a0
Date: Fri, 24 Mar 2023 08:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679644865
