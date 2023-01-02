Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50F117F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E0DC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672695687;
	bh=ZA5WGCeUlf2uGeS50aPubnEKHX3+3MXXQwcxq2MNO2w=;
	h=To:Subject:From:Date:From;
	b=dKmCnlnuIZkV99UItOcPi2iawtYp3ESrRIiDjxwAqgEacZucb7q8WieQm0OX+rifd
	 QYt8fJK+cgqOgmNdPHK1a/Mv0kwv/cVqiW5TX/jGqziucMHDWi3r5I6r2hK6Y3trCs
	 DZN8AX98++X4W8E8wv0ntN3BKDJfCP+c2KWLTbu3ryDjykREgA7solLI2oqHTj8djv
	 OC8c6z+dFIGyVV7dQl8TDNQhmnM93JLx4xnad/eTd0iZwV7/r5jy9iKAATfPGvQTaz
	 WvzqHpYSnrssj+zPhCNVmgwiudmHawCNjphPunOdDYxTSrOI0wnsl0zUP8Llk17n5J
	 I9dN8JWpyGyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE4AC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269568738.13871.10201341545003619234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc08a9f426b6a6bc6f22b5dc90149a61a617cdcad121ec4c9b70f96d4c2e77a
Date: Mon, 02 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672695687
