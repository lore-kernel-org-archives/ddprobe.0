Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F754685
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA5CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663194053;
	bh=edDqN8RZUTrcsDt0owWjIOvCskq/xX+1jBZ76JDmVYM=;
	h=To:Subject:From:Date:From;
	b=npMxFeYnuMdsIKVtHsFiLxJAwe+fTbLPBzMgcUj4IEKq90gnrFaUyfRDG8/ugTORp
	 CP1DKSRARmwYvAYpi86MGGZ66jn6z25lav7nmfjUxO4RMR51VjyzObMBdw1tpH5tTG
	 o7xeaz2dde1qgll6MTy/tGj2z+RFsiqAK+BF8oXscB2AMr0fc3SszMi2fzo97CWFD2
	 EtvC/58DLcTR++mbrC2I1Q9lE3QsY27U+vjJc9Els+UCvOdVs/M1hTGO5My1h55TXd
	 QC4+l1d1aPND9oL0nBjZToX1ovTVTeeb67OqB+6mngpyPYPB+uzf8TdAJ/N4H1j+or
	 5Na7wrm1SSEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53607C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166319405333.27719.7238140288564688447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bac743b486c8de111c9b8c96ca47ddd2ef1f57729a9e840c8c4dd17c520146c
Date: Wed, 14 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663194053
