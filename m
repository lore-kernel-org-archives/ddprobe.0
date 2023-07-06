Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5668CA47
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37EDC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688619428;
	bh=xN5iEC5FjS+TqDbEjqKOx4CYv6Op/LJ8wyu5RVlrEmc=;
	h=To:Subject:From:Date:From;
	b=CDhBLeAEpx+6NDDP4lC8icRaffBoTDViUOQ7mhiWawBJAYMtl8V5t4nBvGB2r4ML7
	 QjNcBTYlfUBJZQPn4HaPmHIfWcUDw9GgjxaaD+WZ2egETIlUOAfqa6plXsqrlCEAkX
	 nTGPF5e+rbel+sWO0sRu4mRYHVToSMG6fJLMu7Snb7J45xSSjBHvelEY87MIRhaasp
	 gTzRNp+AYx7SN8HRJMtyCOeuuVP5sBvU2b8qoCkFazsfkiBufgTUFtMm5EXBPIVnUS
	 w6McpM3+av5dZYiu1urrdBCG1hkOgF7y9bnTpan9nA16ULOdAHQzMKDRkOuYBWjWaR
	 QtiKDjS3Hh0lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63A6EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 04:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168861942866.15283.1791711835975376535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78eaa2f2d224cf77c1fd93c6de20d17aecf6e553ad77cf17afd942fe92e42703
Date: Thu, 06 Jul 2023 04:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688619428
