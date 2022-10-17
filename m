Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAD97F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77967C433D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666040453;
	bh=KwdP03hr/83yAac2+WCr1qTRtD6aiBJHhoyR3vq4J8E=;
	h=To:Subject:From:Date:From;
	b=gy+yEFJxv8zhIY78wxC1TOZYWuHZusPvDYFJ5DC7+1oaZ2sHIpnsf514Ylr/rUYnJ
	 bqcRI7o+ON2L5v9fxoZLnA57UHV0jlpTlLTzy5JoSCVByRo69/8dPW9eTxlvt9S/Xh
	 JtvnPIa39fONly/eun+fQ3nfV6zxkKNjmqiHAINUFL/l/lwIRN2MGAKV7WKPhc7zM4
	 ciqB8hFKKVYQ8t+0/5Eu2QddH1xXAuCEEIlOcfMW+G8xMh5xY1catb+rE9G+ecoVhe
	 qqZOQFz6KfbJhJVpYv/XgJP23LHv87XDGU/2OX9iIZFOsnkrltqwftJOy24yAUY6hO
	 KvF+N+DnN5jRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560FAC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166604045334.23971.5549612537569645782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d2a1643453f703f7317960d88b70d54f15a87e34120c510aa36187be008e35
Date: Mon, 17 Oct 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666040453
