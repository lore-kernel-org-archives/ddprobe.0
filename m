Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2B2FBEA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 13:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCB0C4339E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 13:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685625965;
	bh=OA1vczjPnf4EzspVnBxk43Aa1rzQyPv0TTODnlhlY7Q=;
	h=To:Subject:From:Date:From;
	b=iEaP+KTEASWCRJiX8LptEdHnjCk2RBUn3Xbdl9GsP40rcB5AQMosDeZNrgwfrRsqq
	 0l7gs+XVXIw3ZlmpoeQHIYSjysqPGqzB9PX8aKRASfGLednp2VxnXPkW7nGlBpZTsW
	 s5dFoLJRb7HLwtcao2MNp/E7lKAnYIJ8ucSZFFcKpWjn8Z3TvJRGpovVA2kimN2pSb
	 c2kkvwqH4OgDNZKAFi9v/u/AvL0RaFJ26JkU6WZQXy97nU5G7dGLJ7ubRbGwR0oVdz
	 csQcc8bIldA3pAUKAKIjBD4MbnD/mdFu1439sv0Hg3G+N3qIXiVw120TFPyDXJNR6B
	 1HG4G/Td4GSlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C326AC77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 13:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168562596578.2088.12413710468572510307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fbe785a1c1172db25d899abf5fd2e6e8c30110b284be4fbe098271544736b9
Date: Thu, 01 Jun 2023 13:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685625965
