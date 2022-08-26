Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DC14C91
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77776C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661544652;
	bh=bCPgj/3zQBT/51CD+ycU+dpruC5N5hRp0DPbkmxBuz8=;
	h=To:Subject:From:Date:From;
	b=dXv+xrrsEgN24TvpHlRWsN9jagxE7/G5CaSxflTIaE/gd0TfjBbjeRHydr7mJwSgy
	 NdWfsmEKFi+utsqiSLCSY2PwTHwS6sY6X8wbBUPD7KYJO/Qwpz63FvHw36ewptsY0f
	 BSMay9P5jdan2baHsPqRN+0bo6eEt+w7EoyfrVUPysMMHmvDn7W1UGwxlTfXA0QYxV
	 NbGUhykJZs4c7vJ5jtAqnzQrFPiol964R25nPG2/yb1HaSMDQMb5cOr6gDP/jM2xAu
	 ZF5v4UnAE/xnBTufaMAOjF3ePO0r/8FyR/FX8BIZ1zYiI9f/Rso0JTawEAyIq7R2M7
	 Gma25HvGVWwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5823EECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 20:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154465234.15394.3057877734697896219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa548343ae694d5c498a2155a10b7d40a88ccb644c0bb1c9788c8f73f40f2411
Date: Fri, 26 Aug 2022 20:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661544652
