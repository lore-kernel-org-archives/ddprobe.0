Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE82B1C2B
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F8FC43392
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672305687;
	bh=soR3ETcf1IEucM3EQHKe4ZJRkZbXeh67IjctvUkGM0g=;
	h=To:Subject:From:Date:From;
	b=Wbi2XyXZEBl98yHtR9LqUgsfOl1cLOf1urbmtVlfrpxqJb+6jFfRWrax5gmeid2f0
	 0SowXbXDqJ6jm5k7B8KUSsYXarJBTRTjRF9GYYwquf7VkMCmdzHWmJk096M+Ge8Wpl
	 ufnSSVVKqk5/nBf2gZOpGY7CWAsR5SZHWEa7gthzsG0ZmTxi2aFxvyT5uBGyWqPbMY
	 VSF4bJwvc/qQWbs8TdeQuXg7mZeTAGZQpMoQb2QPmmf4VaCoIs9MFGbIQhB7X0hrGG
	 qNRnDivUvBz1Qoft05MVtTwY4LqkZlFDnuo8vvV+FzHaEAE09MjlGRaS8yHJAtIYkK
	 1ApN3rtBsldlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6036BC3DA7D
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167230568738.11905.12419269582365882076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128892359a14b31e495821581c4542bbb0d970200e5f5836d45e5ebfc7012719
Date: Thu, 29 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672305687
