Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07E13239
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D57DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672166487;
	bh=oURhOU0MFh7c8fX/WduSfA+tDMPQLUVazBRM5Qi4huE=;
	h=To:Subject:From:Date:From;
	b=RofTxmHQqq9QrpM6gC/kRrPExBslzJ74eFunudsS3DsqVmvAqH2FFYTLzFli6WFO/
	 4veuc32ow4+ejo1xXCbN2FGe448HQ50+fzsd3sAEIm2vCJlvMpM6/fYCDB94hJYpqD
	 A8fdQmPuB/6KSaCHaIeFW5Q3gxbT8J75psi0eSGMyVsJ5Ry+YFj6N3dURVFGf2B1d+
	 1xPHJ9XPvVpzcXc1rSvo1jDIj18+tlcHYGUymgMxH37LpjH836Kx9/DEGuKRPmmYAY
	 r1V+oGKqgFUOFNTgcN8j/sr+nRodbli2S2oSMhZbAh58iZe8VBoNIb9EppV9lOL2Z/
	 IqY5poiK/bxGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72D0FC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167216648746.7596.10325475220845258800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335b39053eae737dd5ef7cb13c2d4b2170c07a707499d91ce53f33f78008b8f3
Date: Tue, 27 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672166487
