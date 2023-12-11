Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028312135A
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p80NWNAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7891DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702287496;
	bh=Py/A2F8zHeH5Qyve+PsTJ/HWd4UnkZa07NJzChQZfwo=;
	h=To:Subject:From:Date:From;
	b=p80NWNAcXx0BoJvV0jhOwk8EAoOp/F8QkM3jndVBe0jU42BRV3WWVe9/5WY0j8y4a
	 IgsgXX4fNfj6sNiPjobCayWx8YxLozC5LxAjEjcC7MHahkN4KAzy7iYsvXxbaNA8P2
	 7b7+mWsJKpChdNLIYhwPhY5BK+HiIJ5FfRzB66JXUanVqf/H6TSiAyJkyxjj4xoY0Q
	 HV3FiREELCQ1LfaIrDdLBs6K15fxpYOc6olZDKn0KvbSI/2einoYA1rGjCWKomiWF7
	 +9ylZaZzZCsY9TwKjPmjc65hmR2kZYPZhyDo4pPjUUx21n9gUEB5ygGlFgqkq4Tga2
	 4S+eaHdAWMs5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62528C4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170228749639.8036.821238491993789471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20662c05923c5af03fd7437bb4c14f30b90ffbbf1f3b9eaa343e25f6ce88ff1c
Date: Mon, 11 Dec 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702287496
