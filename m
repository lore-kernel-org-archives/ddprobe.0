Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413D82771F
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07B6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679697665;
	bh=zI6v2Rq3c4XOmSgrL0l4acARaWbv0ISRFnQywnDf4vw=;
	h=To:Subject:From:Date:From;
	b=J7YTFV8RgVue5Fjhnn3sOoP2OmfFHa8gKPphjTGpuxZEOhdU8L9PLHR+aMFIBOjE8
	 6fXWBsscoZgZHSTLYrVStE1UXkT58QrCE+AlZM7PYzV37mz7pACX5vyhbP4XQtXaeL
	 oxShxgk74NeQYAHiYvhjk77K9rfrY0NvUp+eG9t4fNrB2DUPInohaDtguQV8FqPdxu
	 i0fan8OLRxpNU39c5Wmqe/vbLesiawDOdJ4jLqRE+Jusehw/RXAAhKCpbJBUjrv/7B
	 /JNigx8J7dMshwrfP1sr2BTROEvEvjRWAAm+aYLABzSnYAIZFvN4hYAx4ATNEzVVvM
	 ovyjQ6YpyJYCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C158DC76195
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 22:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167969766576.15875.6952538064466740745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b7fbdd79b907ef1d4428edcf7847b69f95c90f50108cd801295f5f7167f9af
Date: Fri, 24 Mar 2023 22:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679697665
