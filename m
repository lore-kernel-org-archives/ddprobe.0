Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23B78C1A
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFB3C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670449854;
	bh=pCofn3H29zVp3L3eJpRaTZ9V8Of4hHq5H9cqM0G4Hjw=;
	h=To:Subject:From:Date:From;
	b=AzU+TUk1BDx6HivCnwGRhzdpTN2aWyo9hPf4q6Rh9y0xVS73k1aB77NonmDWZd1bf
	 +EXWtKbGRJJrYtUYWCnPuIBcNuuEpsn0TrCW/67UUBeGi//KcJBWYeq1Yi7iqdpplY
	 t+sleDzJD4k5qQ28mpD/9Za/h8KHG3ssrFSrtv4ZB1haD6P9jxZ/ePj7XLZF+T7LA2
	 B+j8NqtlZXSwA1Qfhaz0Mlb09h9h+4IApdQzLbDDteCF1qGoNQq/pnnuht8XCDJVGz
	 H9kcsCI1srNvFZYcZTY3SZrmUiy7QeNJipRM4GCt39xjuG6tjAyKjZG7GpUWE2UuEM
	 cnAzZCPauNYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDFCC63705
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167044985431.8937.9474677399708539583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4e7033e37c3fed5fa40c6ba6e9b124a971a025b6818504eb2ce61d45dfbf04
Date: Wed, 07 Dec 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670449854
