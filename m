Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D704C8F9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF4B7C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688926029;
	bh=NDGsAkV6YhGNruV1PCY0DBuyDIahwK3ZS6HCKkTLph4=;
	h=To:Subject:From:Date:From;
	b=T/wV4uonF/hmxcSk9a2d9nHd/zrsRVVSdC9GJeqWPOdJJVSjtdviPvYcCfN3Vdm86
	 W1qTTENbafaRCkagVwDnqQZ4u3Bxk+XISEandRLkGPTw5o4pNpLvD8djLlYqR0a19d
	 XlM7QLWF+AlAwebMav02C62Wfi+5PDW8PaDTN4JMDNvfrC7y4+oE1yadV2loNvD6y/
	 YVN2kRIrpsp8ra3VBZGiV8JTAX9YbiO2fe2uZ8wWOJ8MhYJcuYZkE5GzPQlaqmBNWp
	 B/DyK8kpDvDUP3xS/6EISLkYV6qK74IttG5a5zwiOSrjT7f39wc0WoDpHa10dxjhG9
	 Rr+OLv+RpdLhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB554EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892602881.6230.14720558854400560526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad359dd9ecd445b19ec5fa066444f1d84a88c7bf21ad8667d349a785b8995ee7
Date: Sun, 09 Jul 2023 18:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688926028
