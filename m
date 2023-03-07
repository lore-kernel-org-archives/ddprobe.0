Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB4328EB
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 10:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB67C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 10:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678186145;
	bh=NQZ5RiqOixWOTp6Aw4/d8fjJ9k2WaEtJXemI5SwEAiY=;
	h=To:Subject:From:Date:From;
	b=TcqgnW0cRpK5IqZGLeu0Z9rgHTLkVnRNrGF7wOnBmXGaYYLvTu9713N5IX9n5o377
	 dK7QP/xo4qg+zk8O0TjhEc4HXZlO5eokQqVkPQSAWiD2u2asAKsH7tKRbX/l7icL/w
	 2AgQV5t3PVAIvWnKU+B4SYZqZK7g4mBeicMb+RR0rRutZL406MaC0rPrI6HjjXTMNI
	 KlhDwwMBUN5/hb21L86nn0B49CovlBOF19Qtni6Ijz49F2iN+BjMhRSjXjmO5MUhjG
	 gbUFGxEDhliU94yHRmXY2R+H7KSPjhM6JNDopx+3SeRYrpStwRguolx8crwzQ0CiBR
	 qLqPIxcIbFTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0550C678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 10:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167818614578.19249.8542790785694754982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10710a9b1edcd9dac3bc7ef8bd0bd616b05bb9e1cc1d0cceadc57aa605633ce2
Date: Tue, 07 Mar 2023 10:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678186145
