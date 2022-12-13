Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E9179C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90808C433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670962887;
	bh=92YF4AHZ5w/mGg26DlEhxhDFLp8UpGtzls4JwDIBUnc=;
	h=To:Subject:From:Date:From;
	b=G5GW0oT2+DqlJ2nIzqeb8l3LoKkW8oZG06Ab6jqnnjlKkAyjlFX7BjMog61YEyOMs
	 9jx/7AjYsoCPw+cL3xq3oqLdZ9iMbHeKJD1LuDd113eI6Geqx5J36ZTevg0ykUgHSz
	 oaGKh0WbxXXyEsHIK/X/vv+f/2D65aDWhu3AbNbYJUEBcEQHFBbaRR2VLarxK2lfDZ
	 8o1qcD1bIRwjU2KRkFoiZrjaQ401tN6qWrSJrAz2BQ0F0n7I6xusTEvQEqY0BBqV+6
	 t6v6QHCaFDoVXm/OV3BAE29LeMQBlo2jsknnj2xNbnOrD5TnQDI5fzoFYDbRX7MLjm
	 Kdz5LWMMjLi2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 790A2C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096288747.15214.16318202179748588382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cefd609baa8fe3bcd2339980f1e14fb17bc7eede566750b2f9230f4afd1b604
Date: Tue, 13 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670962887
