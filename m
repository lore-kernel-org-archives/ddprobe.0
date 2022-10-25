Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE01A7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E098C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666737653;
	bh=x7Od8W18CByzVUgCY3OPSqQ6eoAmeDZWC8TIRAQc4Us=;
	h=To:Subject:From:Date:From;
	b=VU1AQSwyzaxSNEvFrLq7kjQBXhe5j8RT97nvOO9MuAxlsI4mlZDKaBnQvyhpnD9iu
	 qFkNfvH6nl36D5iD6DXFfEq2qgaXjVnkYy8LjcZ+/TOIWIyxwTSOpCVhNiqIidv+TT
	 UWRiVTda4ccO0Y2P14DFLmryTHFJPwGZ6m1xP9ElXaEINur2kNu2rHgK4tJnDY0g7J
	 QeH/KbHCySecRKjZef4mYY5p60F3NQMnsUpzhTeXG982WSpKBta6KMqsCRhy4Gg++P
	 LsZg4lpB22t+vaGDRebez8KjQha13bziBOTCO+qwiKkf+9fUqXJJyt6lElVMO3qW8k
	 gqe0GTa+LOI4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565D8C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673765334.6400.7874455199549869730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f062ee166a695a654afa6ec54d4baa8cd32aa4fe3d4edf4ca405469a64fb0ff
Date: Tue, 25 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666737653
