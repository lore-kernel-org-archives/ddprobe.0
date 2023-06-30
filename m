Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54407101EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1415C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688118788;
	bh=HZ13sIVYo7sZMi0s5q+wjsqqe32FWGUwtJeo/ZxbuTc=;
	h=To:Subject:From:Date:From;
	b=k96bGXH3LXw0Qgaq2FHRD95g8yglmSHmwf79YXOblQt7A7EcFfzLENJKXMS7NlhvD
	 +k9/4nMJmq1zmSMHAM55lEiSZM7+n7xfKzjguDHjJkbWuxYyu1hykOuN2ItWkeUgqx
	 l1jmPt8D0omxcg8IoYxnPiNu7PLzXSvdPRRQn1c5XDEdkPnNEE6ezoO5V5f+VYGdce
	 89Hm8iG7rQQy8LtiztoCJIqmnfBMV+3XIOWlvzdfPcw4YnYtNAvKsFmjc7r7VY21h/
	 V21AB9uZRgbHUXWSldb+oqv2+hs6hX41r95dcq+XUQhJIYluENthXfgwNfIgCXaMrd
	 09Ol2SOyIZTdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96CAEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168811878868.27589.14172575479318542253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478f10c158db2bd4412596c719cf7266fb48c8c8a30dff3c5534220ac0a10389
Date: Fri, 30 Jun 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688118788
