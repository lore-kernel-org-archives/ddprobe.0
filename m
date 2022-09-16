Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C20EE19B
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E1FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663345853;
	bh=IMYOxCcxGHPosWZ2IOMZf0ApUy79C+iNUj11oQi4OVs=;
	h=To:Subject:From:Date:From;
	b=GHS2fJKVyTz7jISR4gW78/0IsTNCjRjOWHsyWf3nQhX4j7zf9yEbk6FP2Tz5Wy3KW
	 7fj9E5pFinGJVJPKwR+JIdajcjoqZQcHiL5J0qr9RX7JQdYsZ6KWJs5/BtNoaE+e4k
	 WIaVQWtdMuDN614cUkJ96IpeFO/j5pVqleyDVmaLeVkSQOWbWOnbkQ26ON+q3u8VLJ
	 zzF9yak6sdFOCtWRRxvd6U7oqr5/Ihz+wR2CY0tvUbAKibWYJ09NiEVz6ZWkEOZs0z
	 jZtyWzLjvtoXQLGLlCdcA4dd8zBu53Yaa4slk2B7eFG6b9EWP0k0UNbad2M55jS3AC
	 stLm52zVpTc2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C931ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334585335.13818.7742859310561899909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e4f23168578c05057ebb98320ed6eca391331546ea502eb688c52564dd9061
Date: Fri, 16 Sep 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663345853
