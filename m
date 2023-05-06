Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6071C15CB
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 123FFC433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683359286;
	bh=d/cPlTEmgxU+r/84f6+xqAiuZPOr//egaiJZu2XJCO8=;
	h=To:Subject:From:Date:From;
	b=Ad8+4BI87GCEJe9sf1VOs3NxG7t4IPvCuNH0u0O9I/7gcZvJN86sE8BTHugLXxmZE
	 PMx6llRCD9RCIL0BMhp0SXOeB0XQCrov0cOVFJ/AX773YKLEP88F4O4u30mI/LKBsm
	 otMwAgZ6gvODz7bllQAD7ZWGdjQ2XGbXQtuxA7TGhPXhqOz7PnEdGDnyOcXK13wClF
	 U1ngdr2ppLrgZMPMmxyo2GQMgziQR8j6e/gPW7dRBCMQLY03ZhKxRldPCHC3xvE0gM
	 NMS2V/Z2+3V09/k7YniHxYiSud/A20DG/jL961/izzhzthOzSwSm3zBb5I7Qo6U70Q
	 5vWLIq63od/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2B70C77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 07:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168335928587.3327.11177128354349567871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c87814b8b9d388c33bf0970850302e193a7eb22af6f83d186105ff87ba8b71
Date: Sat, 06 May 2023 07:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683359285
