Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14362105
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76162C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670426454;
	bh=qH4f456IN8nKhz3wUWl5ICtZ6j99RRziqNtZvazDnJ8=;
	h=To:Subject:From:Date:From;
	b=qM4dZNoLnpzEQ8G3LpdCn/GdmkT/k4fKaUFT4Lx7UTdF/P4RxahZWrF1lIdPJCM93
	 2E+SP7xkNhvUHyWwxNpH3d+magMjCvT85pVjeg3pkCNa/pa1niEWDz0TIDDqwjg3Lk
	 PoKEyuwxgfUHPIizUOlGorBvbpuacyLQZjsMuCMOlbw4yna/rCtGYZZjjdWxNvU9mn
	 Sz4eCPIHeEuvYhlZQQMgqFcynyWJKLwGTPYMPEPUSzH3Jws7SQD4qRs/I++TBx42oY
	 zL62D8E7MIqf0e3v27cZDRNE0h9qo0xEIZNrCvJ6cN634GevtzSymsOmdS900UY2JN
	 sYrXLD1GQbV2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555AAC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042645434.3467.17367588453220416091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc71987d036a44ca3996505bf595aee31aec196956150395a200ace24fb9f1b5
Date: Wed, 07 Dec 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670426454
