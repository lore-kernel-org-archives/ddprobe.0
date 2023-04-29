Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8E428EC
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D4EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682764505;
	bh=dnWVMIiYLLMUXzgjhvQPIOCB+9KQsB662AtgSZCSAB8=;
	h=To:Subject:From:Date:From;
	b=aIOiI5cAeu0cr009UJyoBhlALA+uV/AgPmeiJAQ82NUR8Ahcnj/WIiVrGkoW6NJjV
	 FLS/+RS4H4SeGMZV/gRfc7fraBjG7w+F+QSsi+rGsEOwvcMSsT0S53uCozRVgqTW3N
	 RMPfy3NJ3IluqNpPJidfbY+J+rlv6ebZUIbQroBPo1jWRFR8A6ea4LlhW8vQgVG85O
	 zz5ztGDIjMJJsOlpIczlLFVzJuQiJSCWMeONIt/FPzPDKCIxpbewrarZpQonDHaSic
	 tJmqBoLmmdjjTQo00h5Kz8cAvk6MdO5p8rHDtKrTLi3Oq/pCOGrTZQNcZHE7qypgDw
	 Itr9E08IQxIkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23E7C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168276450577.507.9274451285599290664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96066e08851e2bc958591e4ac15ce2ab963f7a0d6ee16bca2af7f89538c77c7e
Date: Sat, 29 Apr 2023 10:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682764505
