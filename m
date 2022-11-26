Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A0819C
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE37C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669423254;
	bh=yFo92IY6MMjAxk5i259hwfjV/ub7GTKZBg9rt+ao/4k=;
	h=To:Subject:From:Date:From;
	b=AybF30b7rx8mQ//fMj0ByVf9b8CSrV1WG9ZSUqi9iDAECUvVsooiv4QXQ+nofn0NZ
	 ltLOtQDLFEE64W/z7/P4695BuG75IDDKmsPY2c/5j9cpzq/bg5XT5hLH04+vuxHRM7
	 5ichPjFATnGj8WGH0r5l0ObQnEKtSQXATHwzjkmMYYm9v23bRmd+zIvZ1JD4iOiFgS
	 eRk61zz9y5VQ2pLvSd7okUcqNvpPq8suvvfgL3jQ/uSBjrEcONZaL9qdDsBL0fT9nB
	 zKCS3Y99HJrXK0R+F7zZZuNTV0QRZrNWTNijZtgNPBEnN5d+K41rC0/xw6px0Cy6zF
	 FENNI5fNNyM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53550C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166942325433.24851.4244352134072991741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a95d2bb16b56d1b8436c84ff59c1fcdf2e94b7db8c35d3be41227faaebcfd18
Date: Sat, 26 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669423254
