Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8924C64
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73036C43140
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666099853;
	bh=M+Xis3hwWnqTDcackM77g0NjO6GFCI77aVEL+SWHX7I=;
	h=To:Subject:From:Date:From;
	b=AkyCPoKoLTYm89iRbxZ6tGQKqFMGDFVtAdQIBLsevQY3KjaOyxjj7sjlrBoyRIvyN
	 NiRiMmszEVd4rcDEeDZhfcM+4osyz/IGkoWpV4YX/TzDUi8OGItjyHKSu1igcurihv
	 pJWj8+iZFnEnsVhaB75RXOi806IitzFSjRmtQiLVRJsI3gJUPm4686YHSovzSsdJHv
	 Cwei10X+keO2gW8372WZ6R9f1VIvokGlp0EdrBqWtyGdBdWvvmWnnGwKwpdeWp6zWm
	 XO9a7Fw0ZPLzOp8oOYYSH/9th1K8l9sciMRhsS4NE/gpuwye6aEpsJzwpKK1IQLxSj
	 wJOaDGBcoSMEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E33C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166609985335.15750.12254906142187418768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538e5383cf78703aa858ab5fefb65b03680a0f2541325407596cf20652157b93
Date: Tue, 18 Oct 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666099853
