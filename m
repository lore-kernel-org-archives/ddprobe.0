Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8757C6FBA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AE1C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685646965;
	bh=4O/TTyb2dqOZw9m5yoK86b//g+RlwGkT971nHkO3OqI=;
	h=To:Subject:From:Date:From;
	b=DT4C1p7BorgKpayxC9jxpnU6Dv1B6bu8yonY/nKtedfQPs6FwtHCjIeSFwrASz8AD
	 iE3sYnaoF3tyMRkkvpQBltMPnR2Y2BefBchZxm8btwWmRio8AAPGdxbdSO0v0RCB6n
	 ypfHS38F+5s97HiGLwYUEMpaAqI0Ed3S+qY+z+ZDm9ac0vttl9eEuH6ttjgzDhi2M4
	 5de3KzpCOVb39mEzASy917B3DmCJDT/rgGtHB8FZjE1aQ4jAm0C7E98q3t3aZcNyvk
	 HAN9NMrmYbFsWSxJ+X4QQrbiTHi9Yk7m9ergl9QrAwLgQ+0XSAvoN21dqnDcRF5Nwi
	 rztZztHVEx0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE96C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168564696577.17845.1268617019802685095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561bc68f8ddb4af2fdeb0a6e1bb18cf311ff4a1cbb89f6ea97b3d2ba5043ef7b
Date: Thu, 01 Jun 2023 19:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685646965
