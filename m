Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFBA17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBD8C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664775053;
	bh=+6Vn07w4sa4T8tnL+R5kL5yT9dlseKbaXP1AKgbdpLg=;
	h=To:Subject:From:Date:From;
	b=qFEtetAAi4mmX8aqbqwlh+S2Lg8WeFkI/Yks472wEarddxez2HJoemMFIQ4C/3bps
	 oyJOchCTPp7ktbiuJPbWDqoH/0Ktl8cNfsAJXbHQJNoSPv3kv2YhIdyGa0TJXQEKAP
	 VPzGRIWKQMM2Ct/yhLnbcWaSM+PQPa6seLcfzTn5xAYmGl5afNjmCdBq7DKLFC2oDU
	 8aqSjMV0xFj8YBTdIABLxPAmjhos3VBS12aoU9BbLEI4ANFUb52e/u54p0OcGxo+q7
	 VaCs2wj9rVHxmwO7dxZ8GMcBFpP1IgKQkldHUL45/E2L/FzWNp9UIg5RhpQGs97iLj
	 C4WAWTZIZbkHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54263C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166477505333.8477.11603810309751450549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32106d0b4e8faa9378a7d1a956c0d1ff3add4fa1998144d954c62d2b2bd2fd7d
Date: Mon, 03 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664775053
