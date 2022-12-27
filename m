Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0209A62A
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E0AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672115487;
	bh=c2crQ4N7ofwivuc+IyfbFxRQDytc+LhISgsYZcqx3RY=;
	h=To:Subject:From:Date:From;
	b=NM3M/1TRxBWDAddDCgyYspLoEmOSBGPwYb0XDHLHTt4I8kauwl1S6a5r1RT95sWxc
	 oyG+6xnIh1RZEo0Jf2f3nz5/QaLN2lKl2T5e/H2oUPZ7xzjI7K51Kg9lRaYmguSsXV
	 PtvLYbkdNQqWRoEMeXk0YWOe51I2q6SxqLvYBEgTuZlMpQFqhVYkhYW64Vbm+V4K2h
	 b93mXK9VgDjorw0fotKCLXrX2jCpJXGMpuEvINf6FdBiKoAhvRCcynQ9nxH2sDpgwV
	 SSPDoZw4FN9v7rgI9cu3dA2o2dVEsfH9G73priETSJjcZ2FiNHr2a3DJO4MgekQAD+
	 +4/jHRA324H1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF51C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211548742.8232.10338779030422494534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f004d412575bf47fe6b6914ecf43261877d3456830a25d683af5c99c5ca67d62
Date: Tue, 27 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672115487
