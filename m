Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CC97C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 03:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0091C433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 03:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689218948;
	bh=3JrA4IzJ6mT7mqeLBmuaenOwFeJDJw5IyHteHj98zdE=;
	h=To:Subject:From:Date:From;
	b=MPmIfRezVLaE9A+450jPNPYXISW+vCBohr9HqPKPDHTOyhsilwbtK8ibxkHUpKTdG
	 4hgJeYJIhaQSmz73jYHWlMBxuV9A00nPftQTJzXNl0D+DmOQAPfgOBG73vb7MB3ZI2
	 SlYsfCHf1RrmPiTHCgcrCpo+4kBkunaOiefV726vR3LikhQ+s9QCgcP3JPp54813EK
	 Bm5c4DfmgaIWWq6HA208BqXpPF8jlOpmdOF35Fzt367izqWJqMZBYCQyd//beI+0tc
	 xw4/uvz5AJb2Gc7vozEihUGTIRljMc6WtOUrGsLTT4Rye62dlLlZhISZaFasZGeg/b
	 zX8AL9QybogTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB65EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 03:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168921894871.6775.3958391014626020332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0bea38a5ddb8a3dd7ba8a787c4f77dfa167eb8685ac9c350d7367df5ea1f72
Date: Thu, 13 Jul 2023 03:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689218948
