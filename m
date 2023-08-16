Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D6110949
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 12:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E26C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 12:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692189788;
	bh=vFoZmI4CPssL/ZyBrZ2tkCztcSYrJNxtXTa9TSVTYTQ=;
	h=To:Subject:From:Date:From;
	b=HnIlO20nUG4AdKHPzYoPCBEmjjHBDHJ7cE09KfZErjXSfXO1rTJQHNkJjmxsloHZT
	 OLq/XXDlFGChTATTfTmkXzhcEvjZihWjB6EqK0a2TOQYeapcLeoH6DeWPbcqWe01nr
	 1WHo9hgjRTRVQoCa3cMDbWI0CziOzu/HBkPQMabyWPXrIjhpHJYocL79pMCCnKVV+F
	 ChdqB2nWSVOOnQx/RKik/5Vc4g1Z+amny9xv25JeQ7rG4SJ9jgg1eTi+QRYNThbqnt
	 jV/kfUB/FdmoXy2VUUTXh50cpFARiCPRhSI06lS+kkBxydoNdW97E6Rg8VnnwtJeiI
	 n/grjtHrLWlqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C1CC001B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 12:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169218978868.23846.3467275195228330376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ce75a13a6a9ac206d131a2b0e51bc07c0c637e8b6805f86262c9db3cae2685
Date: Wed, 16 Aug 2023 12:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692189788
