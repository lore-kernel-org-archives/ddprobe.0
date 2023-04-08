Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4677E1841
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 09:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC029C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 09:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680946866;
	bh=fckKem40+D+nTKqGozUbVz7ShvcP361fdT/9bAa2bvw=;
	h=To:Subject:From:Date:From;
	b=La9yyGlCrkA9rEHfZU2MrjFCHwtsLzPVSksuaGXvy4KhHbhRcNDV0eKm1BLxb/oa1
	 hP5/uUYnCav5fUJHsNn2MDhEQRhEPPP3+bM9ucTrzUCBUf+SBmlof6381/8APpwrSP
	 r+0jvgoQ7U2L/NxAa7xBi+iQfOXT+G9tUeQ0l/M2vtxGoXuTlvC7h5a8rKAwz4aeYO
	 0ZfWCbPsA9oKD9woxrgCStSXiFiUfcTboMmXpZ0zV5BbZ0XvKCIU9PPkNopQnudsvd
	 5P1NOUa5v8oNg6PpEYxL21gpnH3GhGuQn/G5bi6osTHXldxx0jiVosJL5wx+46oRh5
	 Z3QwQ2AZNLxCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA6CC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 09:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168094686581.4968.13868379010945082161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49cb6cd844c810398c92988fa5555a0196031e76dd9a2d31b95415c75188979
Date: Sat, 08 Apr 2023 09:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680946865
