Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DC5443A
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A37AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661703652;
	bh=Td+IQkehMvmAXDmwxPk5ZOgRJqQ1goerqBl4kaujep0=;
	h=To:Subject:From:Date:From;
	b=rROLR2aBw39Iz2le2N5vFfsrsgrAE6lJD3DYzSb2ppqZy71+gVsdK9n6+iv3iHpDC
	 wcOKc63pXo1iWfZEjKNX60hbnL3Ajp8ME8doDdgKGHMTBhNXQG6KQAHpMklrJ/ioTt
	 mAZ+ywV46fToc6eHNoBMNuu3PQfzP4xOONFNHIJd8eV3wHVTDxfLBDWngqvd49xeg7
	 YBQvb0KEiWQiuW+1OckYwNcqtPbdn8AzNJ8dafbEepVav45xluQzegEqYuR7qWNlRI
	 X4l4qYMh5AVKFh67JPxqKTv63lepg7zF88SbKjeb9bIU02w5vMAqsarAjSbZDGK418
	 fUFa5WeKS6zYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52095ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 16:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170365232.13953.1806651353790601644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d5bff6e33cbb6d127a94c72bdc5123d794fc2fabaf6c985f5b10c7835db69a
Date: Sun, 28 Aug 2022 16:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661703652
