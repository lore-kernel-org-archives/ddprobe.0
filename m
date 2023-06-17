Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622662E0EA
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 06:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5132C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 06:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686984548;
	bh=46muxW/+BP2tm/Yh4xI58je9tt0KFDfsle/NIR75Fxo=;
	h=To:Subject:From:Date:From;
	b=sdPKZ2s3epr3bn8y365/HT0cYwrFzJYx01wjle2JX6aublx+sCjp9ZPKf2Upo66x4
	 T3N8KGkuWlKnve2I4g1MjDdLDfS9jsvwuOPKvnzyh0RGYTNJegh5EmkRGmgZ58HpJF
	 ji00p5sPNspfAq1hU1evn6rEkKsz05LqlBDlBk2ApibGsPKu8u+HVRbCydlaYifC5L
	 Az1hpfSM3r7Z4OvGga/xN3lrne/jcwX05X6BuhaHinKZcOelfEfGlv1dkJynsBgl12
	 1yw5BvhAtimENHXCoE0Yaj3ErNGQsg75IErS+iKWOTuKG1gcziI30HRVBrZp0pG17F
	 DP73kAizt39Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA02EEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 06:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168698454867.4786.1876116552409283404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9edd4be289a613616898ff39608ca1c6fe463c844ed213d1ad18ffe52ba3ddb
Date: Sat, 17 Jun 2023 06:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686984548
