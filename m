Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADB77B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E9BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671936687;
	bh=msEBLMGCvJGrNCSqanfHsT98HptwUgClX+NxCwqOmZU=;
	h=To:Subject:From:Date:From;
	b=g/9UuDHlUAW1iY1SIMvkgXvEm9gJjdZrtyDJI7qJyFHmwKNw6X1+NHX9Fwq/Qi/y0
	 kzvjf7jIW6Y8UnWYMmQkMUHHS34kGa31eGUGeVbefNTSG8RHAk/jY4cl+XO7uYSI65
	 oT9rPavlhxijP9MaVUVZkv9fEpCjMmLpDyM+wWcTo7toOSEFPKqh75PLJoItmtNdlb
	 JV/2NtjcPepQi9/C0JhIiGPUxh53V/Y0Li3qLkTg1pbQe1ttasrg7bBw3ow7pDaC8J
	 9FroPQC9GaqvhmC5Dwft8SYoxQ1dn92Z1S/dP/QoVbkH2XlvKGqDLzr4GBJjxXm7hg
	 rqdgbMzYrMFMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68AAEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193668739.12930.12958438036662481940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3371ee6b2e742aa5b79ad50ee646de6aa441d42dbeed9f6b599b7b97cae731c
Date: Sun, 25 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671936687
