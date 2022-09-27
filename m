Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72F936A
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CF0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664274653;
	bh=5mfkdAuigCPf6iIxjaOeN+tUmhFOzz9c94fi4f+BSRE=;
	h=To:Subject:From:Date:From;
	b=PQYC74aeVDDzNdN3SoW1ba1zKUVLpcWP1FKs8asVKgoVEMjQv0AMFoLZrwk2Blv7z
	 JeXzrs+puwX24xuWdVsQcE1POlS1ybBeVroNW5zQxxBXy7ml6z6h5pwl8sz/af/4Qk
	 TXG9vLnSpnoRGICOHgcLe2lMcjj1dk7aH/0bakDdIirGpYL3uQ0uqB0AqWOFhamYnY
	 2vJRbmOB076agVEIu1aJFRW/89iEnGGkcgozEhSZKajaDIqAvT19O7xK08gzBk/KMT
	 avCWsDIw3wr1MrNMYnTnwVBVvw1dYIuMEdlj0gJlxREd/0kIS7sz6EiuyidQkhDIF2
	 EE9FH8BNTjpEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511C5C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427465332.22589.2342152719371531047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d6751359f8df5019b8d9af3d5655ceca04ad78e67598eb61d8ecbdfd942c1a
Date: Tue, 27 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664274653
