Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4377333FF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 22:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3502C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 22:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679179986;
	bh=BgktVsjp8gY4gwBm0aVOa3fu73q6OrjAB3XP8R6ckfs=;
	h=To:Subject:From:Date:From;
	b=fCDsZCATkOCvO5zJqKt9MJDWD4HZf645aT5Sp9jLl3wi2Khtgf8iEKCi3ArlGUA6/
	 E/xKoBsqmU56ayaMvBb0ZlDn4YhyjlQVuS8JkVKU3gGc2UN4H6N9iQKE9Vt7gGNoTQ
	 Tqp36nSk8+5K3ghb/gOuoVqt9n5WNxy6WCtRiBv/A2WbgQ7uXefAA/tlEL4M9MDvFC
	 GHgCIa6/UKJXzUl7mvdccCWWMeIHsPcr7RErwn36aAzToDjEz4UOtyjX5FpgUAv90a
	 tKADC4BCeM23jjpYnCZ0Ca6QDmRbtW0FGvgffwqZD+nQkmhMXJLL8H6XB6cu2Ak8PV
	 MLyq7DDlw+vRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFB6C74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 22:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167917998580.17748.7541808726186567064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8041889c10b9aedff8c6e8e8ad6aeacf1dc0ffeff66d29ea76a4208ac42396bf
Date: Sat, 18 Mar 2023 22:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679179985
