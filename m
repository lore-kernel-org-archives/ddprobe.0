Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC90815C1
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864CAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674175287;
	bh=DcC67SjLD6oD5vysopJGHZaZtzY/tf+DjSDxxdJ4X9Y=;
	h=To:Subject:From:Date:From;
	b=TvgE0519fGmpixbPHDeAOcqegjgoTAJgqP3PO2YTrhSX1KjmzzY9vMIIJeUO0LoXx
	 aEPcf3pzU2ItEfqgFREztPbkNiF/s202rI0cHbW1kRIkb81ggRbMpESGh9YXBNyu7r
	 vU4N7y3iNRo9P/g3EZ6NGFXGVSCwsHf651UjzTIgwl1fW9nQa2MWK118aEdLgOiNVc
	 lCr1k8c5CDoeAxfb35C99ysArtSYZUWAaWErGHucSvgThG+D9GbWJDJietViMt1r+5
	 bzXXl/UZYSIoQhnev7jzDWmgViFTjhDPEsV/wKOlSdqHAY7oU5z7Pj4B0qLEREHYv0
	 4CIPyBVEhkUOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65766C38142
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167417528740.22878.17415343627280569611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b055bf1c48512483b34ff5ba52cffb7eb632752f9e8fd38a56e5c5af2f247147
Date: Fri, 20 Jan 2023 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674175287
