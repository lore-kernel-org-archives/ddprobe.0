Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381151367
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 12:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C2DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 12:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676810285;
	bh=2Q1VaS5UbeUjccEOzPKwaD+63Ip9xZUkQOuGVpG1pDM=;
	h=To:Subject:From:Date:From;
	b=MnIp6uqQmlV88wqSvhuoUDHZURp3W2yjogJ82elADohvBg7hMte4kcRoMu8DmUapd
	 p78G+4Cw0319yZaRcolTD3l9L2been1LaZWsuGcdK4VXoQmCzs/xq/MjA7pc6sXYPK
	 emcdjXL8o6/wLHnG8nnlPRIWBTkaB0ip80f0jIcijP7wA/O1NvuOE3UskunwjVqYtz
	 AGh7R0M1sNnMJLTEEzVr2a+kuE6nNiOmQrBkf+mTyhSMZbrKqkqejDYR9gCjIHmyHp
	 EVby/LFMfHqD4TMrVzy3VHnZ6PN5W9bEF0Jc1NX8fXeiRIS33Wf6yutB3xRfbXbv1L
	 psehs35/and8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD27AC636CC
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 12:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167681028576.29785.1124164503389145776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e6b8f0d3feec0662be57ced5be4698824dbe513df82f8554aac138fe6b5fb3
Date: Sun, 19 Feb 2023 12:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676810285
