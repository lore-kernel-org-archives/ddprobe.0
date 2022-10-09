Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9D9B187C
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C643C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665295853;
	bh=9DmjotITQ4rhp/pl7wjymEQ42a53DTJFryz9QszKe28=;
	h=To:Subject:From:Date:From;
	b=L6doQ8M8Rhkg3gDs9CZSpCfOBN0ReZ4eiiJNATq79TAmP9qelPwldFbm/1vTzMVD4
	 JaTB+pQSzbCO28j+xVrh82VjhPahKb7rSvaG+uIaUGary7zQEjddLtK+iTkb3cNkS5
	 RwRd/fGa31XpI7KMfxmfjbvcQeocss44tS4wEafWFywx7cdqbPbmQlrBsCkjmh4xbI
	 zBxGOMySJ3hVW00gOrrwp95hH4silr0EwI9LSH0EdvwsmT4wKsI/kTD+UvFSf2i84/
	 dB6W8rbo3Mo7+RzJ9RDZzVmt3acFqeE4xDqHusg0YDSurpAI14c3k0pPYPgRoqa5uO
	 3v4w7ekdphzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F69C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529585333.13032.7374261837613096172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc98e6749fd9dc2315fe34f674b44c89f5c147b57da4357928c407237afb7e7
Date: Sun, 09 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665295853
