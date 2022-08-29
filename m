Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA05F5C9B
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843FCC433D7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661803852;
	bh=VoB5ddSoEfhV7vUpeICEZqKfETdo4ID6+gcefDT6EmE=;
	h=To:Subject:From:Date:From;
	b=sNIICd9Iu9qLBbFHzXEP+XtezNl8tTsvmx6amYeoXdg1xu891LrU5PTBQpr1tgH/3
	 XlMC6fNLLQoFYJJEib1VRl1To6o0/a4z4bXNW2PL1BbkhiMaFdIhsiEwidKE2N/Usc
	 JIS8A2GWyIVrZdCP1rfd7MQDFxG6K7lINgXYicDXrYpI+FLyrOY+Ra5HjOoJCFq4ci
	 CJr7hXDvvYKPJ4KQdKRZ8xrCBv3hrnIn7PcO7vpK/JUKJwsEpDca0lofhx7JUASPEe
	 rO/HyOzYTPZ/KQsPtJADG7DEcuuLR/qhu6Ibh7sJ425LtjKMdRK/rTGvc/+i5Sza+y
	 nz8ZaxaKJW+DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECFBECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 20:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180385244.26083.9375286268916559845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6e87452d4de7ee6d6ba76fee89ea83a5d18910295b2ff39fdd7910fbecc3fb
Date: Mon, 29 Aug 2022 20:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661803852
