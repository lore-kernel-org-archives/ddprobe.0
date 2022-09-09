Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC6D7E3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65B0BC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662717653;
	bh=vmDY0Vo8GV3sZ2HDTg5jdfX9H/x5O+ksiNzttXfRt8Q=;
	h=To:Subject:From:Date:From;
	b=pFJVJk37EhGi+Z4LLbi+L0hp8N3wQmVjhOQMGVEQBiute0wcOuWqd++7pqM1COPO/
	 CVEd6pwRYFUQ+33JW5qzAG0ukeusO0wSjuZFg7jTwDMvciyjCnZPWJdcflMP6ardGP
	 x+g1hq3QB9RbSPfXdfQecoRMOQqNTzsXcPiwao2UU6TtXmR3atagWee0g1p/3Ev0GC
	 0EIyx3sk7fnjTSQYPrW1FmiotR3zbvkeAjc/6awH3fUEdWoIuVjB4Tr4RsyrLIxYtY
	 tYI8o3xhPK3XrVtKPpbAhOqD/iIBcLh3lO2bCN30kJI7ZaYa390TMMSD8eCIjcHre0
	 ODoTHR3nQH6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5100DECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166271765332.18965.11478541020731616966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26f3872a632cf3d19997b8f227dbd0a3d5240b94c5f20277b664e811a9af698
Date: Fri, 09 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662717653
