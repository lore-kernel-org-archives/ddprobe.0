Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2DAA5B
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F45C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671360087;
	bh=8ajUIDUL/KqGK3EfQ/YweIbF1MbZVuIRABMhvppOYhk=;
	h=To:Subject:From:Date:From;
	b=guQuIHUJVJS/o3bbfqY9gYf5L81mhnA5j3mYsfiGTquid9bY5gaXWblu75gMJrVue
	 qjAnDHSpnClsUyWEzIaYEM2wHXByn/1RO91j7TkxPFwqlj9Quayo31P4XzQ7ctW+OZ
	 qMj493MaOU7/aXoLQDOjXPC7nrIV3mO4hm0++OgA+rkN009KdBtarnI/DEkTPZdNGj
	 alEWKVOjqeZhqSP8I0fIs8myiYV77AST4Dui1oEckjVpCqZqVP7gI0U3hfW2LDY0ZS
	 pwwbDXebvwW15kxWZaWd4y8sozQXND/WGeyrmmMX6iWBwpB1H/xaCYZZZ1Jn/KCb5+
	 eaqatjl1rByPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65827C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136008740.13528.4517518806345271107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bc247cb848d5254d3718e3377fd99312c11abcb079fdb04d79dce86d302503
Date: Sun, 18 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671360087
