Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30FB1841
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D72FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666918254;
	bh=BUXphjHoaWESbfZL1tyvOEGHOWcPAxug6zY6Q5FRZ8M=;
	h=To:Subject:From:Date:From;
	b=HsTKvGNuxJgykM9R+upZMW5j/Udx3TYBQfF7I1mXTkr3SKw8byFcwwZDIxLLqgUT9
	 80HE03nCbXRQb8c0vHGn/zInSXUTArPdCjXe2O3z3VIlq3H2AdqcNsqfexdyVEVbwM
	 pTdy5xs8jGTm2e2NRPNjcXCCdpLkXQIpFzrmRrBGQWxWe1OP1ljR2LVkxpLkp644Dt
	 37gF2mZ6ZXs4JRWTCt3w2hp/DN1qXkAEbGHK+N1BcfHa98N0lcgUR0UFyEHVB3zoyu
	 N2wBETTJMmMRSqO9V7VPzk1aANOE9tOwZS4UXteSbmpz17LVtDkuGFi0SMev1j7s8d
	 KhWIxY7+v0rTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5564DFA373D
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691825434.32109.5926024647470636294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df9baa59466002a7fdbf2c32e2a5480a10433d63be327fe7251d2e09772fb67
Date: Fri, 28 Oct 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666918254
