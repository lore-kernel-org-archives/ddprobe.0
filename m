Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2182CA2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 11:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDEF3C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 11:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676027646;
	bh=czbTh+HVLyIqp+H+nGWj0kL5y4NbY0xNtX7k9D0cvcY=;
	h=To:Subject:From:Date:From;
	b=UjFgtenxPWwVQaiXcN/Da7O7BPGjf4ogCWW9PynXdxpuk3q5qKMs+rTYsmqvn81cd
	 pXJ6HSeoh88QvL4fVlI7IkDhxhsxZYqtKOmfca3myGiNuM205INsyYWw2vDxSRsveS
	 dkjOnNMXkRnIkmR1QYCtJ4ZQUDSUMQi/jw6MGwx7+ZgTCRSlkaIq8pt6IMhfHMzoqQ
	 7RxfDuKUCHJrLQse2FKMkWwq4aflPgOh5YRTml3++EV0sc6Uzt4D+ehuZNGIYj4e9K
	 +5v96fLXT+Er23R/VxJ3pjYRtU1ZbPcZw2BtvqCBIlin1MEK6ViwpQOPyDyKRnjT5m
	 fdWwQ6wUFugyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92CAC05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 11:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167602764580.10893.5658868164706901495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd661c2d99a08a4fa3401f81aa803b94a826eb55c1bad0a123a5d8881a7ebfaf
Date: Fri, 10 Feb 2023 11:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676027645
