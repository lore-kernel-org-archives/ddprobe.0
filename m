Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DFDA34
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 04:28:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF3EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 04:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689136088;
	bh=Cp2vtBOJch1lCFzbglWlg3JJjxt9Uo7kNcqQkPzk3sw=;
	h=To:Subject:From:Date:From;
	b=DHR4iP0gtN+rsbF82l84sm3YB4pHI5nei7oXO+T4ZKBPKHfeA13Cob/L40HfETWyt
	 AfDgEfv8H/qxP7naOZI3BlZVLL/HaCxesvuMuwoHx0upsYDfMx9J9fex/lIc8/QtLy
	 OEYJn02DLQPgPr9FpoPRHAatgNklt2Tw4lxZ2fmntWV/JIi+KDW7YTgw+5gar+1EJD
	 /QqSPj3nJNYIvEd3L5LoJSGbw/iIrXqejhX++XDldclpEWosdM3IAFT+vzpqZEKr2J
	 GhQnWpA65j1hLliCdDEm2BC3yFZ8XwhwCQyGkq7AAw2VfnrJ5GY+Q8NSwrlm2ts3G3
	 VMtzsuCXOpJHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14CEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 04:28:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168913608868.7054.5390143014597881797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f548760dfd8be34c3bdf610f3d42f1b94266e28805f8af805eaace9e683595e
Date: Wed, 12 Jul 2023 04:28:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689136088
