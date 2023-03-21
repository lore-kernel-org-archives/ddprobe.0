Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDED185D
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4747C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679374685;
	bh=9ekCuBdTGh9eSCzh8SQDkKmxoM2vclW56QHZW3TVQUA=;
	h=To:Subject:From:Date:From;
	b=jv78JmiS0MCkLo7EXnrZJzOTib8NY24LuD8Kzyfb4TEyteQPOM6hzdIE+2bHbOkS2
	 mQRDgeFKd2jICeatLeHcFsueTOP1seAdtwIOZoWIRMenMvTOPoLXIXn1hIWVS4ppgE
	 qalL3n2GtAH73yiADW8CJXw6DYoiqPp7Puo7wwYGTfwSGwk7K/iQl8XE7sm/O4FR1Y
	 RFkJWXrzXRlOD1dUqmmCXNi4/WB5NpdWXuw5eaxD3rDOqbaPqSilN98VnB0y42doHH
	 49+XM++M9zpMYF1ilM3zljBLOd87dbCgwMigmgZZF2vSKExPgM+fxTIt/WdMGpE/83
	 ZOtdS7KPIABuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C636BC74A5B
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 04:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167937468578.19953.15527204844994167760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79e9d139b7b8d3852b6607cd71df4b8be97a7456b461bf77402674c779740cd
Date: Tue, 21 Mar 2023 04:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679374685
