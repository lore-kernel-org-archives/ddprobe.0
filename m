Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16D6657
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91B92C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671260487;
	bh=miGLaccxWz/vtUz1QUhd8sfpOalgnzrwvsh+74idNc4=;
	h=To:Subject:From:Date:From;
	b=C4e73qHKvPEOeMdbFYWaAl/hGMDwEVnqpOR6ot46tHQXN6P4YED5CN/8v6lL9X2jA
	 zfbxtkVQaRdoqwaJTIRDt0BWprItZi1DkZy6/bqdqcBZaz/MKNahSP6CnIZSBDxKO+
	 Qp2FsKC0qzI6oNqF1mNkazNKcriQr/Tn/d8gSctpyGs+hByJY+ilnz4iU7MlRmTotp
	 UoE2oT+Jjijzq+WDNOwaX81l6Q9/exRWfG9n/ZEIfgFLXKJn5B2AgBN5hOub/MpAZG
	 8iOfBhVQStEydBA8Kt7EGdV6y96UPUH3V2cjGLFCrSV1WMQEoM53kO+Y7zPlkopVw3
	 5o5ZoXjnAKJWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A787C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167126048749.8166.9404601951485070653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee89ebfd707ff21f7bf3103de4d6bc2afc50e1ee700e484fba5ac256d1eea8b
Date: Sat, 17 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671260487
