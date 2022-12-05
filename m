Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B058D23CC
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69BF8C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670236854;
	bh=tBCZ76/lf5/jAjQvqnKoZfkzccCBcfKn35qx9OLha8A=;
	h=To:Subject:From:Date:From;
	b=JWAy6P9ednqQvrIyT8//X6NIcig1nUc4ZO9cu4R7mFS+wMhm1bghRh7QZjTWdimNc
	 D8KuRzPfkAdTN1fLRp3su3nCiV8GvrB9nla9vEVkoCtM/1eMsEkQjjlEztVc2PqhFH
	 B3Mz3gMXy0B4sDCGOhXoR8TrK76UPgKg1NEur2ViJwohCaRp0hW7oDZDHuoeZ+HnTX
	 9bnTjtFGNsnm8Lle0khDweSQC3e4ONQ4cCaveejaoG91dwliFZuuXNEk8kT+tsri+a
	 MxJQfg+5dwr244xSEVzh6dE5TqejT1tygrz1pX7DF9j3L2/OOX1+u6Z2IIBlD9oR0u
	 e4qpxboSCAYMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E36C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023685432.11687.1674617314362173468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d315aafc0ca5555ec0852b34b24e600a3e610b1d0a8876b6d191aecce5ae70ce
Date: Mon, 05 Dec 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670236854
