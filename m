Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFA910E7
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 00:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D978FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 00:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680223205;
	bh=An6n2DQF614hFzKpp9M3/ahi0Vm23RmnaiJIT13eELM=;
	h=To:Subject:From:Date:From;
	b=TPIGw+rv6rCKajBws8jhcetja3Qs8TllEUAIXwOsSMKcuXnz8uNYjACcEbjOi8bIx
	 r8c+M7Dydhrt5wXjmS6yMswwEX3U+h+iC+6T071Al3GX8nvm1akd5t8pVQCgjdrmbK
	 qw0OXvvX12ICgBfOiunEMDshhsXGzRo3NK/iggdJNgLIZthrmKEgHsbAFqi0C2F2ze
	 oIiqyU75z8W9iC9kJ2RoyuUG/M1ypcn5H0wpyJlfJ8/Jlj3FTsW9xM7QH5obQpmYzn
	 jg0ytmUDYKGEGVxqFjZ0SMwjeE9T+YFdYiiSVsZZ5O8R2fR7EA7K5/kHltr+p89khv
	 ilmUV/fsC7weA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84A3C7619A
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 00:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168022320573.2897.14251212260346903801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813177473ba55d6edf0900d890271edaebf646148ad111909dc0545de952a229
Date: Fri, 31 Mar 2023 00:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680223205
