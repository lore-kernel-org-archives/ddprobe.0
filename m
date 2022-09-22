Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF1D8B04
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B78C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663876853;
	bh=q/zlG1TT9NoFClG/TNvpw5z5Moy9nXEF3TwHmWhsXfU=;
	h=To:Subject:From:Date:From;
	b=JIHh0j3F6sYaLYaG/79Hztd+NNFlkbhqCIAk+4NxPNKZvyMrylR8T80kEP/yuV8+G
	 s7MohhwZ4OjXhLy5eNibFwEHqkYSeaM2t4Xx5r0uy8aZEUwynI2GRwxsVrhoUsY9QO
	 mPp3lzx0wDu0vIaD7wj3AaxYTw+hY2z+2n/HKkuDKqpgxL6OT1m4/wLf0RflHMSNZJ
	 XavkLSZHBaOT8VedivjWHtpLpg/ure1L2vJjnvZEO/D2beVvzP96pLUfogFtAceUcP
	 hAvwTRa3+shDjl+73F3ILuZZe4o7p32zn5tpv9QFA++/CscgS+7qQSuajf6AbJzaBF
	 iqTLeB8ZRXt/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B94ECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387685333.22183.17430551540788598983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb00ccf79a89c2b24614773c3d379f07bcc8dd282f31bccd1482067b0555e63a
Date: Thu, 22 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663876853
