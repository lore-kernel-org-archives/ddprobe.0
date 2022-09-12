Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B754233CD
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69088C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663000853;
	bh=qrK1T1JbhO+lfhKCfTa3gw7si/IWmKhccvHzBIzD9vE=;
	h=To:Subject:From:Date:From;
	b=BKUZg8h71zpj7KwALDg/dUlk0UEsCpR73S5REiOl+XWMCFBcLuPxxlMYcuw7Yi1we
	 s6QRSIhgCW9ybEVQWsNrmaU75L/1SdQA7wTSJuMmjZFvB1Elmu49IR1TCdlnOYkCzk
	 4eQKrIMO4Hqs86ZOhf7bgfw3NdXG/ihfqPk73GOJ6PTLwC/pRnGN0U8qBU7ushi7ta
	 JVcckVMmAXmGSvn1lULRO0aCrIG5LhoKwcvvaBvxfciUuKAnlFEr9D6HuR4Z9aLhlE
	 FNY1ozeuwgIeEeVc2luOcsXPjE4pRS3WLQpt2l8Wv9sZOFOHh0vLoFEUDR9Io+G71I
	 b44d4AP9jajnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55014ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166300085333.25699.17158680761440941954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627256e10b22541081aa960264ce7aea629b30c49237183499924d82d63a7a37
Date: Mon, 12 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663000853
