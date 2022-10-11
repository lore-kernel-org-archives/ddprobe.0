Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA71E6112
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE74C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665522653;
	bh=1RPZQFbI4DyfP9R+y7nzrBo/40Uh55z6/1WiU1lmWTM=;
	h=To:Subject:From:Date:From;
	b=RXb0Z5pW8KsOiQyoXm+Z+8wunHtRqZxgyjNj9f81w5kN91sQaqHe/vcpMgO9zfXjU
	 ydtsuWcNz6qxOUL+wBTmgCuqKPP7xFXWAhZ8Y185CyRGrePIM1z+ZH9SQUKR2Bd/tl
	 RXXjK04JsNd+Z24iOKwNeCWqsc56uNtEcGkO7uycSGSpR2yXWzfvc9rdU5DqmgZIJo
	 sl1GF4GmcLCOClW+L7NFtDLKLnkGuPk7GpMf2Wav3cLwM1gglGzYI0RFGNzaFDQ+ck
	 llKkfOo4oW0ECgAloB1END9vj8ewYKIRbDGBi1yqFs3JvkEYC1yG/0+t2NbMLl63s+
	 a4LVc+LVUH4bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5212BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552265332.4926.692862630027613304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5b258ea73c96e5d6b3d0a628f922ef928e4465a419ba7207b70683c865b850
Date: Tue, 11 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665522653
