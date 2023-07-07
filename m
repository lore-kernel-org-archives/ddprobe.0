Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E54D1FD5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18B6DC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688708229;
	bh=PI337nCBgqWJR5dDaoJ2fjwThuiQdGwUXNoljBy6Sdo=;
	h=To:Subject:From:Date:From;
	b=ZY540dSwvafRaxtS+9lW1ZpILGxzrOlN6m9GWpf9tQbiYXJEsaN8w76luQFGYo4sI
	 7ttDCFw9fWr1wztLxw24QR8YTurcStgjKs0wXYUDxn1rcsT6/Y2cxGAFY1SgQ/h5CH
	 ABk7l1lcY0kJR5PDt99YL7w2zSMOCa4hHBJ0D348cDN3FwoIPp4jPaxomiJUSyh2E6
	 hO4vMThSPGNifflAuiVDkxwKq8rQ2Vt3pmxk8+0o0CrHLs247HZimKV42ugDlR4EeK
	 oHghabHLE27QhXiYEj/dGLF4ulocbbS4vKzdp5oqOvjNW+S+zxryjnyNmLDbXtY0KR
	 pG9FCMGqxC+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8CC1EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 05:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168870822894.18999.6238857011048864206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae4eb8cbfeed384e7e14eebe319cdadb3f7df9e01a504ecc5b42f299ccb9382
Date: Fri, 07 Jul 2023 05:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688708228
