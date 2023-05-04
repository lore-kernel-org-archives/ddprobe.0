Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603F59479
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 18:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11092C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 18:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683223446;
	bh=FTUbDdEUeR5tdK/+tk0oDocYRksdFEzKK6B8siGEphk=;
	h=To:Subject:From:Date:From;
	b=tDsuP3afORT5dY7QUlkIRQUhq6usGFS4wcAum48WD/wvVa81pesWryOJ+gLWKFBT3
	 eAhlgjL9zz6EYEDpAV+Q5FzP/EyjnLOCJ/oNaKtAn1Q6Rff0Sc+cCzZUWYm9Gp1KI7
	 AyG/ikS4BnAOiRcSZMY7beQoqNRITGITjAmF4LNRCgLzrehfoVvSwAAQd/gJOZJhCJ
	 fkSZ8NB4C1HJH1Lwmhzq08z4sbFy1ncm9rFfcEowwj9Mk1htIfU8DeiLETVhMsK3q+
	 yxGKm7gxDhKMi6nK5f7LxK98aAQW1dAw3ll5wNSvDGx76hOD3fbhtFqoEXfaKgk8jQ
	 SAXKQibB7byww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7E27C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 18:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168322344593.3259.14393709870306225982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf55cbd5fd7bf3ada70b9875f56e914ef37201f10652274d4701bfafdd948f1c
Date: Thu, 04 May 2023 18:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683223445
