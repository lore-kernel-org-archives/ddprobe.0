Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B67B161
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6ECC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687825388;
	bh=sTO40FS8JyrNhsUt2jgUhjLTVMBQKRUkBZji0HTbdHk=;
	h=To:Subject:From:Date:From;
	b=qTdc1NneG69kPGQhFJjE4OALxHdP4Aqc3JBPtli6tzqnevDjHrOwoDF8KT5lrj6ob
	 h8eTeLiAvKADdhc0uGBHRwaiprHke/GRN+CJ6+AmM9CzlaadVywIqiLXsdp+nGTIrG
	 eh8fPG3votLUOXCRkE/rQOp8L7+OTE5yUp9KqDQktm0uLnAM8tnhk1vHzQZc/bTPSx
	 Be7COsNsNjRjlE9OCqslywWKo3u/8c75b0XvIJkrsXRIew8viHkFN4IIfarzCIiUCU
	 H60E3PJYCIg64y8N3tDcRgHFK7R4aDXl+nwRRzMwh0aNbUrwJTBT+1NxUWtGjJ25xm
	 pn0aEnJ8ASYug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8BEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782538869.2864.14135263938641836610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa5cc5e085c97cffb3e4580b1f0795d6596a9d3f61ab778fb56f33f68cefb1c
Date: Tue, 27 Jun 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687825388
