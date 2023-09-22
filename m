Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6F618C2D
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 07:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76CDC433C9
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 07:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695369308;
	bh=AVNjiAH2YHgKMvNuX4sSPbEvYMpMl3Pe6V00slOEXtY=;
	h=To:Subject:From:Date:From;
	b=uj3sr1rzJhzoEGIjTbKw15lTLc214qTM1IitX9gAvUv/o+r6y951Ddfm0g09l9Pc4
	 VR4FRMifQvlQP2AWa5KF2SmVQrvkHnimLEQTbLp0k0CXQ5Iz/Z2F+nr0Un+cJXPMPL
	 UDH7rtBHFp88qTmNRAyLYkD8E/h9XesyKwhRaVeja8O6WZZEg7XHe3ANGme4PFnNmO
	 S2FIc0D+/m17PYwPpubXvm6u3wUSuZEgnkB42f9nhH+ds93qZuIL2RODI5E/Ykm1hP
	 xN6JQI6a0C9ywit509b2oi69T/08fDdxvE9iB7tyHd+GD2NSWJJ392NJvlRQwsrToi
	 HUhQtxS61wOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC953CD4F27
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 07:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169536930869.20612.18419915255290912138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697ce70c8c22c71431cbd12e58e7086c5e78b6dc43abd1c3feadb3ead6f4b2ad
Date: Fri, 22 Sep 2023 07:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695369308
