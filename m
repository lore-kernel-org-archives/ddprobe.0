Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C7A17C3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80598C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673309487;
	bh=Za1tkBBLpg/PnHf04FBuakZll7osIDkRdMWdWfEx3YY=;
	h=To:Subject:From:Date:From;
	b=oN7UGW/L2SLr0h/hxvUKwzRKEWo90P+IqWjHBsfqiNXd9gcjMppwC2GhVyVS17VdL
	 dfwFqnu/EU6RjNd4kjBT1F+hxQGMyKTg7N8s0WlIPO0NLrty7DkhZSlB8A9gFBB4f8
	 X1LgI8cptcX+eEox6tTXaMbl0TSinmFICfW0EQlCvZCQ56OeUJjHbdNen8aFuY/xys
	 FsEOGPwtzb6sAfq+DJNoy3/NuN8mOltenI2pE4OS4F3fnRL5gEfT/Pen//yYGIab1J
	 kuK2icJlmWS/GsTP1mBdS/DvhcgJL/kiJ7qNcf0h/EfpAHkZxejsBbyYk4cMGoHe/D
	 7/NK+0CE8vuxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647F1C5479D
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167330948738.7394.16763959325661908338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab6aab9a80251b56fe2ecca50534e1b588d32553a8e335605aaf3294e6df2da
Date: Tue, 10 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673309487
