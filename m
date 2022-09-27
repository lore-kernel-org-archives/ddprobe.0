Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F8A7B
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A7E0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664244053;
	bh=D9nULCJjy253oq1sSr8ONPTGNCcRkKSkxhni/raPd3I=;
	h=To:Subject:From:Date:From;
	b=CWuXxDQC6LIzzQJX3CwYsiBmve9HrdVDfO8ZTMaSVh2SdVscHWL8M6plO8f92GIBF
	 ok+vS3jl+67ACXi24ZKdEN12oSmrmr6yjlZMetRdwcvEBz89uRJIO1eytkOrGK9T8P
	 U11Pe2yhq1Cl0r/75Mleax44Bui1F+yER/eTBMDiT36UrVyCtLEfOvsOs3ynbrespS
	 mC1f3iP/mKQbHte27DOAk2m8DX/lEyIQqI+7SBN2L7Jiwn6N72ljZyTb8ARoR5CXCB
	 U652PsoWA74HWxvz9QHb7iclCa+nbFoABnmbkpZFIBniKKM2LFGar1EoYA5exbOka6
	 PWIinxKghyA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5157FC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424405332.12691.4848282733631152811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0efd9eb6d438c076e444bdd2cdb11c245a9ed55b4216c5b9af8702553b6e99c7
Date: Tue, 27 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664244053
