Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E66A17C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 02:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04D21C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 02:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679624406;
	bh=A8r+ICiW7AKpcZ5lroXOiU7O81l31rMvIsWSUZorJS4=;
	h=To:Subject:From:Date:From;
	b=HRt1vec08jbx1FuwcDg4t8+s9mcD5IV50dUd0Ia/Ds8w6uVQi71oSFpoPqqacTAPs
	 89zWzWgHvZzQhwXL4YAXbBa83PDJYvprc0Em3dZRAplji+Q2JXPojpg51bNZQ7z4Bl
	 aJ2u4NqgK3O7BnRmJ18oijsUa/aB+YN6jfH7Kcmvn+GDdBIKrzw7BS2X34W5MW+72e
	 LUCue0XpM4B8pRKlvxqUbj52xgFc4vE51OoOptXkUM9osRqgyNMBKb5JJX2N+4Gpq8
	 JkqsQzoG0yyS855Bbtpd5Dvd+Omzxsp4OoPnzNjXa8Dk3KZJ+OYicBzPcsX3x9twxt
	 rE46T1PSmEGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA579C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 02:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167962440588.25739.4575396738119957157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3213768ba8a7d3608f3f7d2dae970a5be81d36baffeae56855c28018e54a4e
Date: Fri, 24 Mar 2023 02:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679624405
