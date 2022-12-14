Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE04B3208
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811B1C43398
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671045687;
	bh=qwZgvoS/uVK3jtD09JyF4VPkmTESKfI16nj3uIty45Q=;
	h=To:Subject:From:Date:From;
	b=noFpuXxaUzc07x5eyAlNm3Hh9ROEteLuDqMmlH2p9kOL6gj0SQhk7wJRXZ4Cyjrsl
	 os3cDF/vKglxTcB9RC2DXFuD59n97tZ0d6IkLaAMHDTL+Hq3tUEQrc8Y2jXsKhU8r3
	 ycdCYMgy0TXzcVaWXoBym79rRkBBq0AOvoRhU7I3NynnFhYLVv1n3lsF3W7d3CVxFp
	 e9TZKRHrIiqTmPWgXtpOB6o7KPe1r8dvGLC/21oWlR11zWEgkNQFMXEalm+qSfFLlW
	 eUij4cRtqzz+IFLB9I+ciyPO9svoYNCTezLxmhWKY0UafuV84p3UHLy6lsB5pYE6oH
	 qHt9gvxxynW6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62734C4167B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104568739.6473.15656573739431962608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed31b178b5371e32bdf6be6b4ea4c64583be5bec1aada84041c65cf77adf52b
Date: Wed, 14 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671045687
