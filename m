Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557A37C
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 02:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECDA5C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 02:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680402306;
	bh=rk8bd/QfI6mwaJcL7ZOn8bhGNdS90KZpS36KwjVbHFE=;
	h=To:Subject:From:Date:From;
	b=irzec4aQbwECIV0gNYT+cn8nUdc96JG3ON3i9OaD28D0jcI077Nh6AxmkqSRWRNFF
	 gDgwBPeB8CHSUcNrXFMKRpSIYUkXNLMpMYHpygKa6GHAM9O8bShzrL18DUz4aJQTQS
	 L77r8yvIffxVLNvfEhdf1V0MvEXUHwNNk2SGyAUaZOdV1AAu6tF4sbtknK5VV1OHHL
	 vbvsmihOWpUx/Slb7ySKtDfNWvYiFEYj5jyfx1dk8430lZGU7oX1kla3b4TJnpoc0r
	 uva3r9zWnSOV4/+KeC6f4cLlzYrAdwg55hqJ7tfrW0mIZVQy5aKTzHqtQMW1c9Ghhw
	 GwJIvDIvVwDRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEAF5C761AF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 02:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168040230580.7891.7266791989448051504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6897d1d3e9da1dcfc12786cf3bdb2dab91b26d41b1be891799dab89f5b6a25
Date: Sun, 02 Apr 2023 02:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680402305
