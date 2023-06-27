Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BFE1308A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD101C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687888388;
	bh=L/eJ2hzWBl99rY5f5WTymydNqqHa/bC/Mk7kqxqN49o=;
	h=To:Subject:From:Date:From;
	b=kG8sNyf6VsCrr1zL6LI/eze3CBdYTonpsuIRHkDw/9tsTT/NURx7smd+XdhhrKoM6
	 KPkg2Hm45iXK3+IJiOi9bSYr1naznjpCql4YbIa/4za4ie3s5t+5WqHaCtWn0DPtPg
	 NNQdzDTuRS0xNr91ManwHFXK14yLneykX83kpjzwODVfd+qFVNvnighQlUhTWdm+uK
	 mEtGvc7ue83jlB/A5b4mbwg/doNT0T/NXx8kRFMFrmR0EW43zGZhIdF2XJDuELZCT/
	 mpHb5H2aZDkzW4A7FBc1u4+SuRJPBldWejWuydIXqi14H/u2r1CtA0cLzKyjbTCqbe
	 6WFfXkOskwM0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C52EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168788838874.26012.13355458264485146092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7161f4cdca90cc1ae86a787c7f27cfad93bbf5bfcb2fed4b0598b5ade29a56
Date: Tue, 27 Jun 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687888388
