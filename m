Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B70C15ACF
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 11:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B8AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 11:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690282928;
	bh=/qt48GFFmnZSQBj6SShFNb0koO/HPKSyYYz8TaMSsLg=;
	h=To:Subject:From:Date:From;
	b=JCTs2jYozZ2uBq/wR71sIMPjd2OeC1NVWFymLDHl1smQI+WWlxlb4cX98r3Ktcycz
	 Faa1Zj+QIBgmtrXrau5G6AZdhHi8hXNcBa3uwCykBxOC/0hDoGueAr6izl7uX4q00d
	 hMQRXxvhE/1xqnoM4PQdXYNZbe8vmhBbujscEmJxFDU/kx2IUyIAZKWbRiwoxvGbro
	 t1MgpwEM7UYby09mMeN/ckl/2CNVMcEPYBoKqKuiNyRMriu6Z1VME+W6QGrVrC9IP0
	 8e/9FIZiF1UPfKu3Qi3bYnoa9EDBjC8jTVtCdJcqsDC4N+dNfFt6aWI6KlZo1iJx3j
	 bhFz/TRp77d9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24A6C0015E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 11:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169028292872.10353.13379345173474495098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf1a36e9cd933f19c9b3f4a9992234e98758e133eb1ca8e6830d2e651b46975
Date: Tue, 25 Jul 2023 11:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690282928
