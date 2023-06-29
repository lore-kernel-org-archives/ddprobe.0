Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC635257
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 07:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0042C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688023988;
	bh=hFYMBRuK0apZU/TvZLDYEBiu8DWVfK2pstBCcsMGHL0=;
	h=To:Subject:From:Date:From;
	b=ZA2nRPSKQrc2zIyj2qnICvZ4WbdjgBSyCadImMuErIRZeBpKbSNG4HNqxCnTPPl1/
	 PwGIrtKeiJDfAlsMGwxKcKGGnPSEmfpFo8wapqSm1ZduSqxIfCnlx5/Fbsm0tM/KhG
	 ScGwxL+sPoxnrvSapUfdmJzjTrQY+BCMa4bP67f/pZsUoHyfiugbANRCQAf+A9debz
	 J8wHJAqCxcuuptliDP2GTrvlf+2hWfGSufy7dripSReFK7QwExOx/7di+JHH/m7K3a
	 Vercb0Ti50H7uPY6z+2nQdsRgCbqZP3+kfSyBUZi57suXcBIf6piZr+O7wd6O1gH2Z
	 0st9tpUmnJ9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF48DEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168802398875.7465.9707869589787283591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed856fcfb37a2e52d3d552cd4e6ae98a0c605ce8ede92a7baf19f3d57771ab99
Date: Thu, 29 Jun 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688023988
