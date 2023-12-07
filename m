Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF379282EB
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+ETKVVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C298C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701983296;
	bh=L9bDA/bmy80KqxHb64a/1DTTNr4axS3h47MH6+VjLbg=;
	h=To:Subject:From:Date:From;
	b=V+ETKVVMll2YfFx8C9+x3+fFU2u5vF3UlIngHyyzNfVjnVzaGe7JS2C38YNcXb8pX
	 bCxnYDFL9Pss/ka1kXC3dK9N5L3x0wy3zLeiyhNzEwzlDZCJtOoZWptdniGPISQjEQ
	 tUXOHmAEcUQvQ/XsaeQ3sFmU9lQl1EPW9PEysdiUu76uUPXk9vCh3xm5zHGsjywunq
	 OmUo9QETdXO25zfK/etT4mkN7c8gzcrW59+lUI2ZDPuxG3I/HQMRsv6vIfmB1aX90k
	 RVSHnl8f6N4MTldcW0yXsU7jan+3t0DvQNykd6hSq96hJ/5RJlSSNaaWLmCemeJ5+k
	 rWnvPbIjlE11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601DDC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170198329638.29324.8403731190133918425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fed0fb8277dca3e31dc93318c06a9be98fe3556cc9f74d64ba217b505847b4d
Date: Thu, 07 Dec 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701983296
