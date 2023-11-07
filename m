Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166ABA21
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7HIf0+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86813C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699392496;
	bh=X5kHsSPfD4w7QcqkFxGsT//ubHmf6Ptug8MdPBqprqI=;
	h=To:Subject:From:Date:From;
	b=s7HIf0+PUXn+GDzMY+GKNaww6uMtswgWwJMOHxKhBqy8dudECRZosW9rJOfH18b3x
	 HjzdGT5MOMG0Qa2Ui8clS77JSTRladIR+zDiQtL+N8uj4EtYY9PpXJ88vsUvCY4+xI
	 11GQ478aJfAeaeORlcYcpnMFNuFtEpYjGjl8uV/QW9FUaKFoEQNC9S3/kc4zCWw+sj
	 Tv58aitG9IEJZkaopeF4g9jd3jmvr7K/VlXh36xCv/mvjgkvNG6uvi5cs7LSPmjfiO
	 PVOFvN2MtIEHzGqwM73Hz4CmBWdTHoT8BI/Xbo6W9vjTF1bMfaOJSykSBiSXdcsFwX
	 aCHF+tmh3CM7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B763C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169939249642.21953.9826746541278106754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357b251d07e7a922abf9ca0b48ed9c7e0b2f40066a24cbbc10464ce8f05a5de9
Date: Tue, 07 Nov 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699392496
