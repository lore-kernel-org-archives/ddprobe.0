Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B1117737
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DC2C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688155388;
	bh=ncQt+j6oVu7IKZlo/BmAF0zmf6/8nX4N27uFJCowhAw=;
	h=To:Subject:From:Date:From;
	b=cGR8yq9cpx/9UMmVHjXKd7rixBOmHkJPDxnnhAqKcmgsfWxRrbMyBDb/jGVuz0k6W
	 HKDMrN+3ajm+C0BUWdPIwAHFVx9Ji7gGWLQmSSm6PUHcXnHGsrg8En0EAQC/ovWKyj
	 ad9Q7PR19mY/VkgpNTBFfqSGNZ1TmIoyWlh8bH9GuSflqwbqfIPOSspiVAn1nFY4Bm
	 m2DXb2Wo2N4J+NmUpQHGGPmCzPsDa075I5F4eVTPEHUBBlhIho8oGDDCUmWVWX4m5M
	 VxtWy2v5bVV+r1JjI0EKK4DBDZ9umeSVhetkdQPdvi7U0m+yClMTHByDx035pzzvmE
	 ROQ2WlVVYCpTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83EAEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168815538873.12108.14105384226961828938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6ec96c1ef807e531d8b7a7a5d0c6abe8b09abbe208d4cdffdc9f50126aab78a
Date: Fri, 30 Jun 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688155388
