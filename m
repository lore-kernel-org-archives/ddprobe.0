Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75B9625
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B75C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670395254;
	bh=xh//BZYHaUGV5OzcJnglJeAUwrFQvwL1jBSYUtoYCVA=;
	h=To:Subject:From:Date:From;
	b=E23ah3J+DXHSP9JUpqLLIC3aN9lxu0GwvUewk/BYlrzBtr6c7ZlCuDIIPmexxxmdN
	 4LhRiydNIqJ0KyT9aPvDEyu4R74HPS5yhf06MaNuFWtB45LRFW17o0LSxlVKU4U5bx
	 0uw/fB218mZeKbn0TREYqkZnRJ3GHQSvBlVfSTSspJbX6MLAMtRa4ralBo1VD9ytkp
	 0wExOj19Q1cr0Fdz+mJCkrIBiOzCKEg4AENfJOaGdU0JrmhzJUzgueSCTnuyaghdQM
	 A+qKvx+BDzUVYE2XeiROqOjwvnPzyLJ0XpZi55BHHWEF/KyCKpYMdj4HKtXsdu1cS7
	 r2pMFdPYl4HqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B538C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039525435.22219.1150198309397790431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a39cdfae4853765283706bd03c866df5a7093cc71a799a47dcdc7e019292aa
Date: Wed, 07 Dec 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670395254
