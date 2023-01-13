Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF816ADE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83392C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673614887;
	bh=t84HWcZ8BQPP74QvYI9iyZ3GBirai34/X8ypYaco1lk=;
	h=To:Subject:From:Date:From;
	b=LX1Uby5f0Wwr0qlwYfLLzxRyiyWSqzGzNy4I8IF2daabkgrSdSfGwQUEDV8T4nual
	 u8iyjBJ8y7r6O0sJ1qmQJuPMywlgait30XJ2bNAOGKmXAa7irIfcFo8lngl0BqyivC
	 /+6U5P1xy9D59El/p4kmIwvtA/P3193jBUHBJ4AfYuirtVlyhJHkX2gI0PE6wMkYZp
	 9XJayp1JHPfKV5ake/HT1hrl3/WG2Ft9v+tQ3UQPFQi8Suqrt/3i/TqW9cV1GuP5gq
	 1D+vSh9HEQdXlnIa0wtmTxyrz2UB26zV8uqJloOUmq6oWV/BdCKXsMF9NI64lMhsJq
	 jWqLKekN+ZJ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A96BC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361488741.30719.3934831049052864925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c53d5da6ed2a22ffb18ec0f2c7a5b0d4562d77a749c5eb837e5993d79bf84e2
Date: Fri, 13 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673614887
