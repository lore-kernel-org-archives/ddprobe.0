Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3793220F6
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 19:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB01FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 19:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684610945;
	bh=uOZoxwGknWlwCTr12VahNx/8QV9LyASR0r2W/tqC1PI=;
	h=To:Subject:From:Date:From;
	b=Wmv60CcljIOcjJ8DViG8nQd1UtaZZiDuIviziQ9iQcS1iQtevSTSwgi0BQarqnZxE
	 RnKh9Z3vMRMMtbsT6j3wjA64Jc6o+WN1LwzVgob70oTxB8NrMMoJEMOCgt4yPdtRME
	 hbzT+hiVVJbGZXpPZ067CNSys6ZjWuOF+GNitVCxGFXAdi4RDZq6Znse1rk0vKIO71
	 3MPk6gqor8hVmoqfk9lgd8OxLYLRNr2aNdON+6JhopeSQTiZfBOGxrAnDEbC2toKG/
	 pycgBlxI55MHdY8ZmmhCnpbaCp0N9ISBNYErGtdwflxJCLU0dn/7dDPK4NfFbmCjLi
	 jLc1dtMgL3gbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA004C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 19:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168461094575.1934.12729317161805363797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03da9e6c9d52db7c3f3e644a2f23f665edee84938a06e8adfd35a5b9763b4bbd
Date: Sat, 20 May 2023 19:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684610945
