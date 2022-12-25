Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA6B181
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD3AC433F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671926487;
	bh=WmP6UPni2MRMF+oepHtW3DaK3HxwHb2QifQSZv5i8Q8=;
	h=To:Subject:From:Date:From;
	b=fZaxi/hnTqOyc12anGIQgQHRQLkCEOEw+G+D7yiC0xwCKvd19dZAjfhTSyntke7Le
	 TwMAxCUMdllNb+vm7Ut9bxumxFkwU/l70ioNb5+d+aY/RDqcUdxKkAiDjLhArHe0cx
	 3+5lUydrxxsYZzQj+1JbQjpoSctwPg2EYSby29Au0fMYARSX9+smnrV6SctmQiEtV4
	 JNBN8DvlzSxa7AzniWbkD2g1YSeLjJhgcGQBJ7JGKO4jWNBEpWnz4G580f9kajcHtK
	 c2OirTKGRthmL7laN3CzaCLSqsqXP+DbJ8VlGmzBpvwt7tE1v0Yw9olQXVvOzvGOVX
	 e8aDbctJWnQ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBF4C4167B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192648738.29608.5259153324561711399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba92125754a2dab9e28798ffe6549f038f6a4a9dea0826aaf7594e8a04ed845a
Date: Sun, 25 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671926487
