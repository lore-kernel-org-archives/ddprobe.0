Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5D0ECB
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 11:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB111C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683026166;
	bh=XYrT2s/sAkgOgeiHZ5gGpJmP740FqpWT8ZaskRsgg5I=;
	h=To:Subject:From:Date:From;
	b=ImO+dVk0UNW9iwQGZIoQ/hNRIt16GFCX4pATme6vymgPWItimz3aARj0iGxNuSY1+
	 ewkgASxMgMP6Ujv+0gaoYefmKsye27z9Iq1SfFWcP5+Oj0VLSAm25ktisE/c6Fe3df
	 MiM3iLDCj62IOx3NHqwQDrSQ6Fk2e5ClCELQ0fZ7QuLLGKo5M/lUfWSPFzRxrZC3H7
	 9vHHBcpC+Ftab+nauhTrey5CWLdqonqrsZR78a8ZOYs6mKuGORWRhesH7go98mUjlF
	 sBIfsm+YE5BUeEtQgMKe8HAy0KEZNO8AwVYxkNqnZihuHGYosp7l/d18NZZFPR33yC
	 sCieCGYIU0YAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C97E7C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 11:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168302616581.23096.6476155367019636610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c1148258372ef128a38a6ec979900aa45b875c1ab57bbcc1788ba248e79895
Date: Tue, 02 May 2023 11:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683026165
