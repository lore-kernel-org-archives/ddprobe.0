Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674381C69B
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXRwFKaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF210C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696594628;
	bh=zBQkCZAGH5Niq3e+VD5LCmol963Sihl/mSZSkh/SDNA=;
	h=To:Subject:From:Date:From;
	b=SXRwFKaG1DDXWAulJBL+1q9diQc+DegI4scOS8MVT9Oh2H/Rf8o+E6pMeDbbyTUg2
	 NSvlnlblpS5OjHBr2l2We7QjeiXbXWTaTrjER/h9lW8Nv0sxb+62+WVm6TT2pC60MM
	 qZezj+KQ83nqqY8jChSaZLoMrBWSwC7mrkMvmixUthf0vHE1NoObLIZdTB4K88ZZZw
	 ui7hT2phZZUR2owvEpL3YAcfTreLNMFaSbijACZvhvBhpSO9StTr3iIfrRuqDttdVj
	 rTU0//jWt3omGOBc0POXUGGeR5kYP0CAxS+GErX+IbZTOVZ4GFsu0qf1UcPzgUEhOS
	 RBX8b21xSM/LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5258E81DEC
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 12:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169659462866.19756.16311899914501001825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32239fcff7a896fb394e4072bb0e1efa9eb22cb409fcf9539538f4106e779106
Date: Fri, 06 Oct 2023 12:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696594628
