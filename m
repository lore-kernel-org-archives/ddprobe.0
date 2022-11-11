Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD5B1B54A
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82890C433B5
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668208854;
	bh=Cz3KxUeilggjVPw6sLPFs9aOagp/HLSfVItIP1+AePM=;
	h=To:Subject:From:Date:From;
	b=Dvh6DfUfpkjDRar8F2jiWl+PJYpkoWQORiMcF0vx6aimulnGrV0cVTU0di7embnO5
	 brLdeptxTuwdsZtJHQyBMnFOgKoMR5Tg6XnPyHHjaZMmNCBIW02V+8i7LCGosPMfoQ
	 6flzoD0NdDqPdwYSJ+NK8xKwdo+5IlLtNK1wL4X3gY+YBtR/Z+XkFXc3zJtKZ9V5ne
	 xsfKaQ2sznI6fN8j7GBz8bzU+03DwcsqtSoAxKTGzh/Yxf2KC0BbDJx/kbPJohpUeV
	 numn+1ffWigp+BJCdMRKM254RUf4Bh+IkGOHQo4teyA0jQOS0YJHOTRA3TcgsdFzHk
	 U7UGzx+8k4DQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E12C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820885439.11481.11797426712966115913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67843c055419344f94a4bbf756bfaf03ce662b6cf48e2a9dbc2df38e9aa8c7b3
Date: Fri, 11 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668208854
