Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FC47ED
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 17:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96E0C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 17:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676912945;
	bh=5OR7viHSVA2XlcYFNVxWJSQ+jgfOeCg2+yNFWyDlzDM=;
	h=To:Subject:From:Date:From;
	b=uXeRUkGcRC8nZnqQNdnOaKHwIqTnF2i06621Romr0aUgH2TDRQAQPkIa9mSRfB56i
	 9NQ1N5NIbvZgTe9VFTTmxfCk2Qm7P+RdJ1RIh9eO4JxTe+78/5EwNXNRRZOpJN78ea
	 exsskGcRm+sJSNgbd8u33OQcLepS5XnIxuNMOoBCfTjfMGcBwQfHJNyKibMbZ/DCje
	 PwEKmPD1di9Sqm/G+7n0QW0plhvQU83v3aN814crwFrNlTjc/MtMcjBPhRmxAK+uxg
	 vGGkU6EQM/V4VfxBgPYO+TumUYTHZ3uyEZZRtzc/cLC9++tTDukQa71t1RTCtszd3K
	 08dsLYtrNhz/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA592C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 17:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167691294581.17371.8039614589865929307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5432fac12542fc3e84e8767b07b17a59ca45873829ca828a59896256e70de9d1
Date: Mon, 20 Feb 2023 17:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676912945
