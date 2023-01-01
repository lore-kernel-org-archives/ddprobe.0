Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF2A123AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 960CDC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672603887;
	bh=udoJOz55R3TO/e+6rDeYY3HjvIj49xofnijV9mZwizE=;
	h=To:Subject:From:Date:From;
	b=K6zNok6zj7xuwEQ62lTbgNPjW8VohHWEMcJuHzdyT2h46kV5w4gbprKkwWSygLeia
	 ge/7K0LYk+thLXHNpSELpJ8SXsxMygI/Lbr63K+0aj/tYP38IMP/UPBS1x4veukXmv
	 LabcZi2uJPEM4Jpu9Z+pToBtCZWdIPEawT/khjOBIWu1d4AX3urv0JLVrt0cktA2Z9
	 0WgrEQPNnyQhYfVkVy+ISUQi8G4As0HUBMthSpFl5ecsHfkca0t/cLseLgyyw0k7DY
	 Y2pSV5aFre8Uq8H5/QrBVEPMkDDUfXy2kxJuEbL4Ta1lHjFxm6yfc/1TXHL1OsVXKQ
	 B9WrLr88/2lcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACF4C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260388739.30424.5981152726213314360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2a0efe734c0aef93e0a0d70506b4f4b4b93970ea3417c5ab9096eaf7624d25
Date: Sun, 01 Jan 2023 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672603887
