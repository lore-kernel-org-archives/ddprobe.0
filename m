Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32A07E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8977EC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672539687;
	bh=4EklTDG+twUyWpbqbFbkYvvP14q6nph3qMr5nIuF4xA=;
	h=To:Subject:From:Date:From;
	b=ccjcGyqL7T6aTi5wRD8F65KkH+pC8J1RoJ3kvi8UH96EHVQwZO3oQN4on7AmWQKMc
	 xpN/F1txWfVuywYrTu+bXyZHs5PSlmg6+0eXHioUptWHSS1UHSAK+vwBDw9UAyo0Vz
	 hhrGG6KfVaQ4/OP6CcTDGwWhL7Iw3tQTYcstwBpUZMUbWe367A8j7Qza0VHYPs62uy
	 yIZO+iuTK03BZgIUS4uR2H03X3KC/lBmAwJ0AdpjOcmmKrFmDZDkKgVChycnwcJw78
	 z9hS9QQSUE/dezVVw4GuzqeMPi/Ro8Qe27qIEhKNO6/PEhHA8ZhwHld5GF7KZPfSCJ
	 bOJK4dYcz31Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E5BC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253968740.5691.6183838091589978625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8439611ac6a1c946489de82c998a2d485cfe8e68633277e978444a39a36ad7
Date: Sun, 01 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672539687
