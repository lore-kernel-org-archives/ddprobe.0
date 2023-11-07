Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172B63066C
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmNqLq2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84696C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699399096;
	bh=AGQj2Ra83yoYwRCptWLd9dnjyFrXCQjDYYBS53DmtJE=;
	h=To:Subject:From:Date:From;
	b=fmNqLq2MHpDTYdngKsg1XES2vj3tg4Dp2Jh5yLIrtFLsll26SrQbI+wwTfH86I4VP
	 1Q4NPkuWEqJQni/nCY2OtsrAJqoy7vu/ZEbk89ZeNQxsNkpK71p8hNQqwciC98kD1V
	 3IhRno7fmS71eNbsHi6aoEt1bxB6aHBPbGjOwnMdQ/s7uEaw5+GmYSd3IMB1b+kDVc
	 xI4q1vNySReIAZPQvGgf6NKf4bXpwcJPxsJTHuAu+hvLyZUPju8EXhxWuK83wKLFRK
	 Nqe4nhWM/g+amz5LhHKT2GTyyB6UIsccnCDRUtXeYq+ZLqJpEIlT6nXFpcdMn8bjU2
	 /CiLLCF9gkMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC00C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169939909642.6233.14997277882839487926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477beaa1d279cfb8f142913d44b52c87bb0f556cfcb1067dcc53d1c5c171ee6e
Date: Tue, 07 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699399096
