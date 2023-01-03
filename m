Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21978466
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77ACAC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672758687;
	bh=fFV0OiMM8W9StMkt0uJR9ZLtZ1TsjBOgFVKrGUJuFiA=;
	h=To:Subject:From:Date:From;
	b=qh4Oqv+p0DkRY9Xqv3Rc3I5rcy1sV3jxTASQtUUcRqrfrk++F4YYCVEtHYzMDxnkA
	 xYTFbAxvolS21rpShNAw535WGHW9w1/z3zENatYbRETi5OSNPbBlqXjedgap8TyV4B
	 vvEgf7q5ddf2E7yvZ4PYtd7lh0FSZqFJ+7LG5rgE+qFRNtM5NMEKm7EJUBQpQrU1zu
	 R1CAUPi7H5z90HKt2FQkaxAnyJc8CQuQjwNdECvEcM6fLYz/J++f7GsfiqDXlA5t4l
	 o9gxfVMZ0Csjq08k9UpAjxPTCbMCuf34h3YSXP1iLjGaRJHUeRczfRd/AJDwu+r0d1
	 zFu7qzZquEJaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2D7C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275868737.6224.6928614429707026178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72035a0d242e44c18871649fe9c62291fbd05b38ec098f2471751a7775a1f0e8
Date: Tue, 03 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672758687
