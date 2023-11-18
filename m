Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBEE566C
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmjVpIHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F966C433C7
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700273896;
	bh=O+i09aD1sGOUfIRTuiZfRGKUzK0a5UR6P3KJ6qLB3zA=;
	h=To:Subject:From:Date:From;
	b=fmjVpIHpqWOmZ2CyCmuOOOY/hahENpthnAY/bvk6tYfQHugBVx81Hm8KwIsH96GBC
	 bdKwQbp1ZkcQ8VtzqmwVYKzMiYYcmifNgZKO0CJ/pX8WF1CSwf8y38Ia4uVfaIGnP6
	 0SUek+YuzBPGyc4gzfvZXPRG7Xdt/C1TFnJtI5R361nkIhr6R2/IsMaSYtuRwRUTm0
	 mSCoGKkfrZwbO5ynbNp6Wpet/waBkXPgDSqqZX3tUlK1Bl4aDkGdCxh5J4uZln0bmt
	 Lv2lFz6o0jg25a5+62mmC/DW6Ateg6Wtmry3T+ysl6CijkGhffIYm/82wtgbA2+yz5
	 BhGY4elhjrS0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77DFAC072A2
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170027389640.13308.11021242286466214141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bdc5fae7ce5fb34dcf685e684f0db02f3cfccf26a51f75cecd0b6cbae2c10b
Date: Sat, 18 Nov 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700273896
