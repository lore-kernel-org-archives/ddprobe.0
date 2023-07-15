Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FE72592
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 21:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD8B7C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 21:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689455468;
	bh=7KhSZe9x82e0wnDYqvFFC0n2Zqz5AE6cLY2iGctCOMk=;
	h=To:Subject:From:Date:From;
	b=ZYe29LlGGuZpQt9kZXnshHwajQDRLvNZumYASZbfYECKwaKbqrAzwJ4Ku0mbqTpgr
	 ucWsIgubeX1+KZSNBCoSRkTp6o3YyytKCHqVUtpZYoWKvJPVwFPb60Arry0Ovq/rm5
	 WWSgQiICA+9ODQ0VDU/ywFiGEH6zbBxeATcUuKaxGkvzCS2vGmbnEK8kdd2Pd7yChn
	 MFVDiS5axZpE+wzME/rbF3ZxJlmYGO8t3gbr29dLCkrFbnujEQX7twEJqf6ce5VB+k
	 MVgLX+TRMLnQBD8/BSpW5Oq56GSCcVlDISdNDSmpqPVYQJyKbayGDqtikq8DkmWjJc
	 N2li87kKwWHtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA6DC001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 21:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168945546873.13297.1337348392914912651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6541921d62f238b2629141f53ab7c93b00ac920db373651bc7f6b44a92f46193
Date: Sat, 15 Jul 2023 21:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689455468
