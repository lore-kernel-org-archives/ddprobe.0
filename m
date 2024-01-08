Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F15913FF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNf+171R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76298C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704710296;
	bh=Zr3ITxWM/4lrAoSfcJycsnSEYljo3TyfMoZRLd9ZVVQ=;
	h=To:Subject:From:Date:From;
	b=XNf+171R07hbUteeh8muV0P2dQu3ZQ/0Pc3LBX+4dBRGgsvNBKY5VKARW1mHhjd4i
	 e9alfpOgld1HJ/qOd92udljEV4M4TNFAVP7eEeCKlTYbmNc48fxhHIWAZrA9Y3e7ls
	 r8hl6Aua5iDuZ9Ls1WwrpS+x1YMyy6flh35vIDtXZ6deJeiUmfALjHvbigYLaWTduE
	 /tFI/dlg5nJsrYzizbZjg992iDl9DoRJsSc9yo5T9yFURT0UwsGBxZB+8keX48BY97
	 7z4LiM4pneccbkJZeFAFTorr53nR2kJ9+eagWsKnfSV1CKDOTlqW+uDI2F1J++rx3b
	 Ufj9qbYFHhX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC00C47079
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170471029637.21496.2975376931988560300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb05a2d068aa4f25c95671fb52e3eeef45dfda85aeca8598e9fdf9b9d5fdb487
Date: Mon, 08 Jan 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704710296
