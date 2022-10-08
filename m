Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19347E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C01C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665232853;
	bh=35Hzmd3OgMvmhRGTtdj82hkI1pM7/uMkZMqDqOFHzsI=;
	h=To:Subject:From:Date:From;
	b=M6GqayUT402SQPQ5sF/VM0fhvC9mpJ9/YVr+HbTxhi2V9F0E4bDM3ntMpgrB/nQ+c
	 B8i1TQOq4g11L26pnIlWnHOTVYx1seFplI5dBaWGIt44eK3aoE0GYFpsKW0e9oPWVW
	 qRE0UZIUThE1qyLnoT2ACUqI8AnOGrH91kIKH647VF+1wlt/FwCDHDl+aNVRy5l1Wu
	 TNiYJrAqgnYGXzkNQcLjpWLhlWMjhfuB80pIX6kVZHS1iKSWVlaVt+wu9Uitj0ZyTc
	 mPJM30yViKmyNQ2YtlJ92jprH22NvY3izixQRwJXz5KsKC0NdWv6hdQZdrCOeKstRP
	 rdI7oJWIsESMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E603C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166523285331.13635.15895209905010603430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14525808e016bf05da3016685d64253104a7ef12955f2e7e18e15f309fc368e
Date: Sat, 08 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665232853
