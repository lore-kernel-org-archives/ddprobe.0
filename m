Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62E83C02
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EFCC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662366053;
	bh=GEg9zlv6u8uwvFOdnTNXsIBFNqD/m9niD68zMuvZtCg=;
	h=To:Subject:From:Date:From;
	b=S9u4lTj2QAup47omYHxioIDgYsMKRbPh9bby8D4Ji9VSJAy4uNsGRzCYfYcT8JEcO
	 /mAPk+pyQq4xR08YzvsDKt8rFwq5CDrxVfqvYUcsm5RlQjnk3/gCQH/lP307NF81U5
	 3M+efKww+sDzzKfwM3KXKIRcW6wgvd+u1by4RAO5blYQ5oq4FFhgfX+cw39uDpx+c2
	 3Lt6EL1OnbLBlMXC4cu1zyfAXz42AYO5Wockv5Vyf0SMSQnjdtgR9uAU+iHpxMwDEN
	 jdMocr3ltkPLFOVAsEIYpD50CU6LkMXI3qIBckOUtHr0S1Ds4JVboi8JSrpeKwDv9C
	 cO6DbCwdoCICg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B69DECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236605336.27393.1586031209400121778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc959487a85acdcd1da818232af1853ea3818d2d6d49ce417185a0d53149ac2a
Date: Mon, 05 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662366053
