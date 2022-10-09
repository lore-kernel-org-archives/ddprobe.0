Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C599E1FAB
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A58C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665305453;
	bh=PSzbNQoJYkG3n9rf9jYBccljifzMkt5ExobFiO+QNZc=;
	h=To:Subject:From:Date:From;
	b=BG4IvUHLmmSjfzR8nlY4f/jjFowyBBV2wxip4VSjU8Oj8kItGxw3esNq0QWveq7bx
	 6+UAyOKxJMusK8sptSmqZi3jtGEbcMOcDenN7lwCsVp7GksDusBwEV5veVGCo20Reb
	 3r0VHi92eQLbijs+I3W0qgxEA39PXPH+aDjD2AUZt1sarVm3A4GznEfF1H+yWT9H7S
	 ZFxDv7vYERhpfvOKP+OMfbSyJ0O+o8QUq2N4xNt/3D5hKXZTBAkMOJp8KNsix3zSGy
	 OpiThe5ncFMn+shIdPUrj1UsVXE0ToIgHqdmTmcAx0SrVvl9g08WWF0AUQ2uJpuPvT
	 yIK7TAWWa7VpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EB6C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166530545334.22524.6872685498687369856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: effa0550b4c4132b75974c9e57d558d41278239f9430e57f38f0bf2ab9d51e1b
Date: Sun, 09 Oct 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665305453
