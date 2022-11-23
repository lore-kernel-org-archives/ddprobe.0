Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFEC033C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B7E5C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669241454;
	bh=UM8C5Vq/9vA2edbhZ2leDQjJYv5o/bsh7P5HJj6Nyks=;
	h=To:Subject:From:Date:From;
	b=Ee8M2TJFxx2/2ohOwSP1wZSmack0pKAza04PCxeDtJsWZ5s3u0YViaAGW1ODB0V2E
	 MTQf+5N1WQLeHstll13VaTjRvOmQINLR5fwWejwFEu+WFt/8Q+PbC4WPtiwYpcHrvF
	 aT/taJuutEEHmmJ1VUb7VahhVwICECkyK3Y5RGLeKTZYiQe4KAJWjbYR/U53b1/r5e
	 xfwuqTUFnTBT5FUHacy0Ta+akj+DukJy+RQ4BR4lCtl8SxqT6ovrutU3J3GLAWC92H
	 dPYh3zvzGf3FnZ9dgO/XITWk9XIhCypBHpm2SWUIP5vr1EFRANpiomzPnefjHCg2Tq
	 Nu1G4LjkIOvvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E3CC433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924145433.12335.10882062628426676612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7e06cac5f316d5f25360c0bfaf4826fbe3d593ed23cd8bb8d9417ac4f92265
Date: Wed, 23 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669241454
