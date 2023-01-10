Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB35C2908
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F73DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673384487;
	bh=MbEW+SRMdbQH+YQ6U73X+uDy3iAGMuEqsIxN6Bp5tlA=;
	h=To:Subject:From:Date:From;
	b=Y6IFSdtStm+OZMoT5DnMdlZws4oimwRg/NNvG3P6SivMnAnnc6wq4nzvhgl9HUcVB
	 312TwfKGqHoXtTLmmEjvEJ0dCl3BcZIVvUE/DHqnJ56wsCtT1dCvj0stwUgfIIWOEW
	 BCjzwbNDq5Rop71ZZaQ605f/s5jF/KKhH80yqNpt5VUX2olB5NEUv27yc4jmsho4h3
	 2rr69Mg5oFt768yGw6LCQ3LJH0mGvhzYuRTO2Rd4Snso3D9RaQTB905bPmbkn0dbXy
	 SBgwY6f2zfuktFikPQLgqDWyeVg5cj4qZsNEsA/j7lntSCeViN0KHGAflK2+yN9WOs
	 o17G2iJDqq2Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BCEC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338448741.20177.6797005203022520333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba8e91bd2007c13263903298c3445c77102f08846933dda85f317155d603432
Date: Tue, 10 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673384487
