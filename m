Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF75E7E4
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C19C433D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665977453;
	bh=aE3EvAb/AtwcqOjENip3b+7AKiDVjU78ODJ9XdehFG0=;
	h=To:Subject:From:Date:From;
	b=WjRmpMeRdlUTnTXrd0FXPpjT6HwtrrWQFwRQU4U3QXT68YEQVZwe3YIYRXoUjBlaO
	 7yxqcSQhBa8eJwlBh/MWuA6C2HLMH2WcOM1Kph9p6uvfWrQH7y/Ck6IIGFLVJNC3OE
	 jflvEKGm2Ucp6S2dOJIyhcByLp1O18TRhDmSCAIXfuZx1Eufb3FSnqCzjUJg0MxUzL
	 dkpzU2/tqr/zg3WcZdGR2XZ+4ZLejsOiVYDRnxZy7eRmNljBbf549+uF8ofIlQpMXn
	 5oRDoBeZrpvjYetJ8KeESvVwTrjhobPWHzEiD/XjLOwfH9fSNaIDNID1UpVUAOGm48
	 G2I+ulzzIARxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57046C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166597745333.9881.16797637412912560228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5929394ea96189cf4db915d428f62b62308ecccb8a1b6641667bfd40cbacf1
Date: Mon, 17 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665977453
