Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286681112
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BC4C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673069487;
	bh=NqUaLPjCEVP7tGAbjt7T3sO3iDuX0qUGFGSiHFsG3uQ=;
	h=To:Subject:From:Date:From;
	b=nmOVPJjinuKa/kOp5iXhnfIqKgPq3tdMiGrzX4XiMyuhALO2mSd8yT6vCbsqK2vIu
	 BGPKHOkoJO0vTp+jhk9Oi7Y4zxyOGB+7/t+ZotIKwl+ETTCRFHiFVbX33bia6I4DeE
	 cQew2uQ5ADgGZcdlg4b5Dv9HIbEdgaEY9B36vj8w6bZ2hZh39LPJBFYE3YUAfNvdXi
	 wx349+3od8B5/cWZu3EG6TvDM9zVmdn25w6876rHiywcPwzRL7SrmfCzgeye28mxrf
	 9PzmOy8u4rHdLEBwEKNRmAiMGRRSJFOC5IgfANLussVK9XOKwlsl5xbFWzw80CtgNL
	 GvBzqnspCufmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9137BC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306948747.4619.14459459851666541012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fb918f2efc67218afbb9c404060d24da5af2c94dd02bdb369b89562f40ab5c
Date: Sat, 07 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673069487
