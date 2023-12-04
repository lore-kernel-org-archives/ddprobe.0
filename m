Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC5ABA3A
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfV5YSD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D9AC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701687496;
	bh=K8YOToIboQyWtTZ8Gu+p9Y4zu9mFn53NkIvuY0Su5RU=;
	h=To:Subject:From:Date:From;
	b=MfV5YSD8sJ/FeQruvjxvOPFj2hmZUvP0w227tsDfX7hUnSj5KMTNydkLR3NuqMULp
	 4icUym+nm4WPlAbsb3PqE4n0aXWN1BAurfO14IsV7NAYTe7oxIlcFx9MXT9qebFKRV
	 jsyMTDQlRBibgM4pihBRCiO/j0EH4EVsvGmd2/omFMEqVGsTGh0ZAmRXlBZ8XfwuDB
	 a5ODWfkwkRNegtukJOGKQ4syRpXD3xVP1TIJ/FeZyjh4BJWQDfgRIRuh9hs2kfzSFT
	 XEb1xlS8T5Y3WqPtPtRgKofsd+5hipEzdAnb68GiIn+3MaCG4uXL55O1Zyz1qkZhae
	 UoCo4g1OJW9HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D30C10F04
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170168749639.21873.16303569994532860298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7699388e9aaf6be09f7e4c02b1465609e2e78c7fd61dde5e3b590882c9615b26
Date: Mon, 04 Dec 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701687496
