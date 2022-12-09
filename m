Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A2C658
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8849AC4332D
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670547687;
	bh=97kaWNhFR2lS4hn2LAmgD1Rpt2NJbqTv9ds005PrxqM=;
	h=To:Subject:From:Date:From;
	b=NGRKObVZGDcpmJBA1EjnPBGf0gBxRrZpMarTSi/NCXICzXbYhW4EHXgywjx9/asRK
	 k0jNdiknizTvtOxk0vptnfb0df2L7zjg6dundZThBGTzwFDaGoo54y7WFdWNCQL25r
	 bLYEmTZIGkAna+MKq8157yAajjzusSVKPW4iWs2/m7tCKn1Nl2/2p+BN4cLlCNZ6d9
	 GtnyHTqbxrDduj7Y6HOK1z02hfBpReL+WrDzyCjv03q9fv36Dhjsl9SN7DNT73Vd+R
	 iyUdOPQ2UVeIBQLvTq/Qt3atZJCVWmTCSsE0BSjJNFMkA3g1lFqo/PO7xZeprDc8b7
	 vbmir2b3pAYZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F01C001B2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054768741.7801.950208998496248305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669c18af9a074de81aa8c556fbb420e31f1dc955c4d5acbba77047e8518cb63e
Date: Fri, 09 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670547687
