Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549DB5672
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 19:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C0FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 19:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682798165;
	bh=AyrcpgXOvmtamKLe4NqgnYQINjh7yzoE+J/MsART0c8=;
	h=To:Subject:From:Date:From;
	b=kpzWIVSNB4Cp+4TItmo8hy8Gl6cIlmtA0vbZd2V1jWHgeUsGpQLmNVokVcPUpqMXv
	 eDMjoJ9X5ZYzDvorWIY3svSxAqwCa+vIJpcXb8rvg5gakyH+7gAwnD8eU/4zWsh2n6
	 5mOTNIL+Gx1ExGLeazu4vi7ur/AYy07MPH/DcXLsanneZqjZvvJC8lcoeaAToro8DM
	 WMLsZwauTgxN8AW5XE0FOu+RGcjx5RfHHIDaeOnjawrJMUJ3+s9c+a1yXwGpe+Wlye
	 6fPz1ELxvPRJlPzk9RIXWVIM/JHna/D5V7YnEFFyI/2est5ZjopUiW+ubQwBXfizit
	 PVz+ddOLtOLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CF6C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 19:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168279816579.17969.17823848429419868400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8baf7a148b2293de8fefa44533a3262942f584db35e9f85661a0fbd80a5be996
Date: Sat, 29 Apr 2023 19:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682798165
