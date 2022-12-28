Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1120A2A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D35C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672194087;
	bh=tLf+cyRN49x8lbDOYOXgHkSgqYQwytqpJhP2cPfFlIU=;
	h=To:Subject:From:Date:From;
	b=slbchG3dqpwqjIaBI7Oct1YQ2hz6cdnYYDLe8fVWcznkH39BbfAZVUMkx7MBWMe/C
	 xjfDD2Gqr1P6c43Ii0P1rEI3gPly9i9z9GGi1NFl0QWjS6aOfGsKCoafZ+5oYbZj7Q
	 OMW+rxw9EgH/Jc1jx298XNO+belvXccWZGDTQZZW2vdWecx7OxdUOSaFrwdAD6huXC
	 RWSe+n+/rt/e5ItP1a694txHp+BtG9b9thAtqafjPOAPglaeiWMOsTVyw9JwLxFABl
	 QpRbzUSHsPkw5zOzrg5jbrSLgy2sy01KWBwCNM9gGWGs4xb0jgqYnVxQYgoRaXnxwj
	 ELGM3bLHZbJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABAAC10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167219408742.19786.4426429282686904214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7b7192582408b640832b4967e3bb6d5eb8971475cfdbdf8a9b01048e4c5a73
Date: Wed, 28 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672194087
