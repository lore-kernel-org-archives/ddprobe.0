Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B861017FA
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B66DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664038253;
	bh=MwI7TAZ/GoG0OF4/z0a8D8AVJ16q10/pI7rvdO00VQs=;
	h=To:Subject:From:Date:From;
	b=RBiHhT3usEqpehNYeC9UO1xwWbMwfrVBP0s24lHvEoRbRojFnLXLBFJl6r1XM3t9r
	 VD4KFUMtfoyzlSk9YVvZI+GycHd0iJL9OXq0Iahpo5JpDpkwJ6IgKmxPEi0RHqLviq
	 FddIacXZn1OoPiHrIxRGM4C4IMA6hksjrV5rcj73mxu+jmbAgpf/T8s79f5usArBmS
	 Zadad6foIA4XUwCFHVmb2/hOchaQQuuxpuEKGizLY8bvOzBxhCA/7kuAvXIcT7Buwc
	 /sWXBZb93lJC5xD17QUeRf+2q/O02XAytw9afOpHXkPwkdpKgLrFp+T6aOWvNkt/4e
	 WC8Rjrd8edfFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5250AC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166403825332.31413.12066776598968342691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50f7dff244902c7c8293b13a3dfdb76b435529fa92f977a0df552e2bf9c0ead
Date: Sat, 24 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664038253
