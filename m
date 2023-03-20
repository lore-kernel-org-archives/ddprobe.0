Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489541C3B
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 15:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E005CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 15:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679327825;
	bh=/yHl4N8HW94w9/cK2dBdHSSX3PUGyl8mhO7TbHtgNY8=;
	h=To:Subject:From:Date:From;
	b=KtAfUQfZXlR6apR1BdKiXoFgGST9C4qSGrSrqEoRUfTw0btLYAk51Hh55+pQ5JgLv
	 T03ZmLSk5OVcUmV7EDKBYH75PgS1p7Tj3rLTxebtV+62oRATxMK71wudcPtNCb5Uvb
	 YULqFcIA9vkFQbyoyfbMP8KIfrMdAU81zf8+0YRpGr6RIgT7nfHAu3UXPe7uePUBjR
	 MytPsI1XmSp+Q0euXRHDjCM0a0aO+KOv7uLFzGf3Jpd8fX92WKdqjkCjk22Kgpzabn
	 gmWsE4MLClkAWz8g3jyevy4LdN039FKsQXTqd0T1XXGK4sJDo1vIVvV1u9BJbLxS1v
	 oWv+ZT6nX/DRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FECC7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 15:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167932782578.14793.8077355813276426467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb1a963fe9662da89e4304115db1d842723b9951574dade9e139830710707ef
Date: Mon, 20 Mar 2023 15:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679327825
