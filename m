Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583FDBE74
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC24BC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687957388;
	bh=+7wFuEA0jOFWYWmh8J3Gu8sfq5td4CsAf0pVUNKmVRs=;
	h=To:Subject:From:Date:From;
	b=TVUglzDod1HIiDb+MynGxolvggZTBHoY5czdnygnd2xQPVVK2zaegmEyTIql3zlae
	 B/nq0gOUqWNUEoBqtXPdL6n7MzcGazyGTMYU6H8gWusM2ST/nlvllWJWfsQMvTShIE
	 5WvUARI2Azz5BDnA5g1XzeR/ZcpPIPj8cARUxwZLUMnRogcUoGKqgw5Fcvv/DQTxVP
	 7WbXfFfWZ6mHWZOFXi83yfU4MxR9yG6sPKqId/HRxZmNep7XzHM1luvabKokwidipa
	 JuZkTohp36Akj5u6Bf2mazzPSCmQAY1PIbprGAzORA/lnYW5AJXHv9fOyebmVNEMhy
	 3ZFYjv8hNSE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB136EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795738875.19775.15406853429382944091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6828a6180c0dc551dac8b8c53b4d0c57684093ada21a2840d517aed405408b
Date: Wed, 28 Jun 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687957388
