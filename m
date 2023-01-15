Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5631366
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8322EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673790687;
	bh=ehfhoA/Erf6KxR7UwG8Di6dBuerRzBpbo34JuzuOPfY=;
	h=To:Subject:From:Date:From;
	b=PQmrHd6JrUihOkpdooOWh4inIQi8xLEqZIvyhtawjrWoccFDWF014TpMZ5SzDAplX
	 zQiGpIFSK28EK78i3phUCMJJMIs2fgfwRJ8onZGitM5jmcTpvQFZ6LoYFDWz9kPiP7
	 MytB77kMy5Tso/pFq4q+BI0krfwpbSAHWNKguQcP0iRPiNAvpV3uU36UaG9OjvWeqx
	 1zgSRSWHlj2cpX2en7fvRws2M2++yngPg95htkXfkessynhu5dooOVeg3oDwVdMjTN
	 NiTe8ybF9cjzyWYr09jeb1Pkq8ZvX3XSQoYEfD31eLK3vNq8TifBshE8Q6/DSYnqn9
	 XTQHslTFvsrGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A22C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167379068739.18023.9092131990144790980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc78f52e869e2074532dd483930f331347c58da743bcbdf708f258722d11f69
Date: Sun, 15 Jan 2023 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673790687
