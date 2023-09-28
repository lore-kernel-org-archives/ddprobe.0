Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DE827715
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46E7C433CC
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695891368;
	bh=nkQV7vxLhjGWKmiNIbFkKNVUjnIBcJYaCGeVs9muNwA=;
	h=To:Subject:From:Date:From;
	b=QW1mOnvNs/vcY4fi8taivW0Yj+LvjOI8VLQZ7s9qdT8rYEEHNsjAyLRBkdHWLE1TC
	 W7xgUlMxKT+huWJG384/I+ORvLMsO/1pElbxqiI/yoeTWB0xJGrWevLICoBFVwNdiR
	 vmLW7FvY9Q7/6/m/FOWsst8/GSUJktI0fPKJ+i2LSLgET4IEBAIAs/jM7Bo7GDWf3L
	 zLHb/NFlrTarLd4ofU0/ibdNNYeZSfYnCEbA00QH7xugEERpN0qMWmr+ZWGce3I0c4
	 uEU+HKfrHnMQhUBkP23XmHOvzNq3ZpdWk5LVkvIBDwMlHcqyK7AXOzPCgVCaDbT52D
	 DPn/GfcF6gJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD49CE7B10
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 08:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169589136868.19049.16125770580047702069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d8b6f1bcf956b0360eee0c69f426cb530af91075a8b5468e60875087f42f22
Date: Thu, 28 Sep 2023 08:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695891368
