Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94E27C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82655C433F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672568487;
	bh=EpWqOWX6dqtfpNTCZ3rSVV0WbW7aNuCX4GAnLPRpuVc=;
	h=To:Subject:From:Date:From;
	b=Ef9h7uE1mXsBs1K2zASQbhfhck/5HpdwN1XyCYyP354IXUppwWhnN+Pp5I6B7OpO5
	 8PY/3Kw8Z/QOR39nCtxRFb+CktJ5rO9/pGLqNyIuAEwbF2V75txwGVfeROEaDYJqFY
	 PHD+z6UsFS1PpQxNyizrumcFpYcWV8vEq4UpyOLkh5v07K0SkEH/yXD4lUB8azhvO1
	 GmXLxnymM0eQYQ75+RF4rRI4GSE3r+vF5MFh9cHuFfGZpj1gwf2WO28+MiWjlXaPfF
	 siJ0qxMCraNO0ZD88oIp7fqsy/Kl1R+Bigl4AUbr/m5tVOSKUrSR75prJs0YtHWD0k
	 2zyAbQf2kHoOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68572C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256848742.11785.11210037380395152372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71d21c34fe574f987a161eb882c727b7b467dafa2810fad8b305844f11d57a0
Date: Sun, 01 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672568487
