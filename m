Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA30D6ABD
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A65CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671914487;
	bh=6J9Oqzg4iuPr9UjfN5TPWgPMXqY94fyI8M+CpctefNA=;
	h=To:Subject:From:Date:From;
	b=ia0EcV1d+VKwTHanXdkmpGWYSFznA02WFvfXHq5Yn65+FXnPBYn79e7hcnKfwaPbE
	 FZKeLnq4+HSyNRSH1aGg2YrdqHA5q7o9pDUsWVJD9pj6Hsr1SrSJRjTXUswLhsKH2z
	 YKmBxvYT/LXT3pdXVcMpkbH2ThgFdILNSQFq7pzOEOib25hZEjZ/SlsuOu59GXXlM2
	 xMK3RN50m0LIw/xHaiZg5eP44JSAX1wPxuovhoGqVxEyaMPrYFatBTWIBhsqFjF3kh
	 K4cGly46swTG4HscFuysOfUlUtZIXuhukupWaWDYm1/1Hise+RX5FW2YG+39/1p24h
	 4CB8rjjjqxlIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD63C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191448740.27763.16102416181482487112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da085ac72685852ea7c2e64d9b27a631b108fb74ea22ef4683471f5840d24a12
Date: Sat, 24 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671914487
