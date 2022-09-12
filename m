Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E5F1FAF
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73711C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663022453;
	bh=vixIWy60v7q23h9g2k4kYx4A5rWnYywww8So1CUdlWg=;
	h=To:Subject:From:Date:From;
	b=a8rAG1u+COBQ36/DhgzTkRL90Q4mLBgcbqhR2EL/tBklssbtIPhQ0wC6BDnWYGeIm
	 UyZQYVZ0e72dNgi6ZIu/TQLU/S0aPjd3wyLmSglWeYudqKIaBDNLnvPgamuP/BMe9i
	 ALCRnRNad2zDJEsgo5hT0aSbomctZ5UPuOTBW1UHjbvhsAv3uon2lYYxFixnKmjaeW
	 21K4Z6zn2HzPyJz2vTpxrnnIMOMMmgE6XWogp6mhBbhLZyiIjhXIZrgxowRQBxQxz+
	 hrxz1rdKT8UUcUlZlqa5NJiyreBVTpTcuhEroJE9TVj04MnJAYr2ZmZelhTkopIZLX
	 8uYukuA2MKDWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A554C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166302245333.15967.12678403444837728297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e32e12608dbf91449f15abe1d913c173094891e56211fc4790b2b719e63413
Date: Mon, 12 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663022453
