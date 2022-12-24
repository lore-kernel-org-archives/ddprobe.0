Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8DB210A
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0F8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671871887;
	bh=raLXRPrwK2+erpNgI03iL6oJFxdSROe8gG1MSwDY77k=;
	h=To:Subject:From:Date:From;
	b=mrBElzVC2zj03eLgvqkPna+2UN6G6LAC5/V3bTrYX/dQXEzPTIEkuNjaD6uYtMWlC
	 Z3RWrym00msrwdMgdqrWt+AZ80tcghMlpKVBcsJTnEitN5NH4PNpdN6s4+gLKDX8ew
	 RLua+Ftb0WWtZmTWubyqbmfqmcq3HpMI8zsbcfRHJdCrydbJ25Fzz2ItkYk38E8Pbu
	 6X/D5J1WrQiEPRZYUKbSGbQE45wDxdF5+H4TWhBTOQkVRjJbK/N2SI9WQh564nZqvJ
	 G3KXKxsPATb8LUU8rGH6RxFAlY1IpZlIZB5fiFyJt2k1tCNno8ef3A+iNCRcg+lEIi
	 8PjgNTTmoffYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621EBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187188739.31571.18330144300863345333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014e2abbb6a145d1502c5efed5c75823e29072f0b6ac98f9b9b3ff80277bfef6
Date: Sat, 24 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671871887
