Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF5C1C14
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A330C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663680653;
	bh=sttAZfeq2UO1xE3FOryIcNq8c7dcBv3u+/MhDFSTO/k=;
	h=To:Subject:From:Date:From;
	b=sX1j1HIwZqGO+Ea1p9aDk7K4ABGMBjfSoUTAfwa96QLlN+inwFTFNwN3KCFZHxav8
	 On5sD/H3VUwXTz6ka3f4TT6nHOLLEL/5KnzWKkoV1LrOSq0WscZ6QbBkO4UgA30mLY
	 cM+jvd95upMM6j0OkUzAxwHCKgH9hiPBzRYlYGJx5bwWYzi/G3+HhiwsJa1M43nDZ/
	 mLpwzLn2UsZtg0d4tfwoH5tjMykcgfIgOByev1722v+mHIVtkdPnG1W0pPqAE2EAp2
	 SNpFCXyVoitnSY6nu2enHrNRHLtO3j8Ys02qyeP9DJgTLt/Hes9C6gpVgjdIrHy/0f
	 C+gy8YhIYmgKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F580C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166368065337.17560.6472367137083391446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9082b52783445ecbd768c2b2168af3bac5684df4925223d9ed6d99803b91f006
Date: Tue, 20 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663680653
