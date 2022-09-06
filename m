Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61F315AA
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFF3C433D7
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662436853;
	bh=Gu1LlHQ/gDdDXH9cDyRmhBDcOo1HVSpPtl5fCC46+gg=;
	h=To:Subject:From:Date:From;
	b=hlGHUCfT+VHB+2tYt5bRnH2OwcRp72OYGqnae3IgcMkJ04T7LKO7BGgbvNr8xz10C
	 QgrgAqjAV6Mfq5KQ/5Jo3d/DolEWBlZrXejFAiO5pMOkZpCo05kZpkvn5mkkS5CRBU
	 dkKbXzd9eZvBxNBAgLoa2gL7Qb837KEeGVxnMOb9kM/DyjLU9ZGVgcc7zBkyNrYUeN
	 kIWsjDHUshh9KfxHw7Fyf0veTr3Ag8bqKKmP7Y1hQ6ekJG3wdXQyIqn4NGEbAx7QZ9
	 s4p5jF4lBnTxwPNehRLUZ4IQROEYeu105tXMXujaYzZDOfhh5+fo5EqOR/hhENL9LX
	 +qG9+i36/oDRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55355ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166243685331.2414.10846841101529556114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451082d1b75c97c298207c743df5a937355b74accd86f7dcdcd5b811f2f3742c
Date: Tue, 06 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662436853
