Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD1F3205
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70B9BC433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665873053;
	bh=CCp40vEqffQDqITdfOgW2BKvvHC5YT1M5pgXJstrlr0=;
	h=To:Subject:From:Date:From;
	b=YM/HkVrM/hzJYET95YC8RMJdTmMoAES+MDs1DMsc7aMurrG4hLBpZXsgVfdZmIZl2
	 R8fAwPH42VU6FEsaTfM/Mubf5utRFiWcUzkUoQP9aET06HYI0AbGUeDlvgTnJY/Y9s
	 NTe6ofFsKvQl93ACuZYqIG2bb1DipqS/QPkFMD5z/bjpfYHG8r4XisIQuFijssabaI
	 /ZSIe0AGPoaUXCZMdvDzLxZWDgpRfKJt6GscJSTWDcH5BqAiKn8UwSaplpP2vwgq09
	 9FjagrZEjpRo6c3F+v0rm4lNU9zLA8qqcJEv8o1catD2JhoR7rt2WwQDhjIGJweFeH
	 W1/5D6IBzUOfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576A3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166587305332.9185.16508402482518672644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23697633a76f7c81d6963129bde12d55b4be8331c61309b72c0e9a73b0b1de8b
Date: Sat, 15 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665873053
