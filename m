Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C66BA4C
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5C9C4339B
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 21:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684877585;
	bh=3T0G6eTmBO/BPw+LPuk7JE8lab4YAsKV0ZtKAInsjGA=;
	h=To:Subject:From:Date:From;
	b=XBzGwwuzrf5NOnWRuptzsnrUhxUfwXTnDNjlttsPY8FT/xdYw0/LWvKY3Htm0N+Uz
	 CXcX58FL085fr0LQrfOEjqMQVtmN0ZoATz+Aj7hunAVgi8ekTO1INHYILSa7IakECP
	 PSv5TETEkAqXmSURvA+S73XvbnsAtNUaV/f3ZTjTfhSSi5cUiDXOPwaVwg/Dg2Pe6Q
	 JF8DXvJjjkdnF4gOkxmcylZ6qTnq+nKXIyufC36P5I84WBKGWFgxBriUXw2YxFSzDI
	 kdW4N+aurmWVPmdyQx08O0HfHQoeUmO1sJoUZ4ItmWCQGnxR1WC2Lm08R8l+R2aA+l
	 6Rv3SGslVjKwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FD2C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 23 May 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168487758578.11292.11886445066303757071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ca4759444cc8e2a6bc2649cd80ff3c2b5c0d0996c5dcc30b7be64fa96bf693
Date: Tue, 23 May 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684877585
