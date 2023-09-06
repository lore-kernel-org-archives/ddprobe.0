Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F73762B
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 01:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB97AC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 01:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693965248;
	bh=k8JqispETN0GVJODxMgMIAUHpV0yegUJK8hDzoFdkf8=;
	h=To:Subject:From:Date:From;
	b=aeXOrGpbX1j+2PysdJKop4cBfNtFfcmWBDn+mELGxH0AtF0LkZwLW7wJrMQqHagkG
	 +g1yLPUghPrg9hPGD55W+9IO4K6hGraTpE0vB58bjbd/24R4zLztsFu+n6VUZ5m41K
	 9HrwGTtmTZNXUEuuvbC1qJkEjqEsfRY2N6x/qkNZKbLzNjqL5paj46W4YOAfsUK0fF
	 GvCB12L3NkhoQSWGinOccerJdSIb6BiHJwhfEXBPROUfIpq3AZbF6lr2DQ8vGbRDbi
	 m5Y09BVSInuyjtqK+AVs5SsJxzfozL8h3oGN66qIxm0eH2oymSe8MJBextAAPBI4UA
	 lO8Ki9gcn66GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9066CCFA05
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 01:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169396524867.21424.11469762175769929617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7284d663fd538a49f47e9465009375f1d4bc02514efbfe8c6e61e45aa875a461
Date: Wed, 06 Sep 2023 01:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693965248
