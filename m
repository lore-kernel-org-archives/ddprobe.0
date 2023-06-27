Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6107A13064
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D638BC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687885388;
	bh=F6iJDudj/iwfm8eg/ibLpATDbM5MKJw8TvV55tw1oWo=;
	h=To:Subject:From:Date:From;
	b=MPC3W/Y3hGILkSCj1GNQ9dVvuMPdv0lK41pOxAEZIWSkfXu50siYGRUJ5UJgLkRp1
	 aEdLreMgyOM9qzZNKMSLIIjzvcBlY6ro6M54k8LFELXgVsK9I6oPVbEbtCXtRUOLyq
	 bdDlM5mP7bmht72MQF500C9eC3nDnRCAC/Eme62cmSMtuRV1r7JcNc/Jn5ashorcfS
	 GOjfSd/E91iRf8FhQYoXlXX8vthtO6NuUTv08SI9jZIu83IdyZbFZC3UFfOYws2SkW
	 5KQvtThpnAbj3dQOroOfLc3R26SC615/hjNCpFc93W2YR5z+A6TfUFYimaUMzVmyqb
	 25AOAeWD9y8Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD504EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168788538876.23581.13453197899296936199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8de1ef0b9109e4515d7f10efb6db896c2e8010e82dbe1c05c93fe629fb1ccb2
Date: Tue, 27 Jun 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687885388
