Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8E47C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D9BC433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662599453;
	bh=Ol1QtGziSMe1meq/V0xlvGoNx3E6PjGz1AKDShmxVfE=;
	h=To:Subject:From:Date:From;
	b=kqBmbzqJwsJ1r4BfbBsnc4uqYK6QP9D3O0eQnQMK2NHXtFNBT0oLrTKp+KwpGUxEm
	 B4q/QtOZ+9hMiDf4zps/3nSNmpK0rQiMYkZhO+XXO4QBo6NRa06MYfBCie6kqancvQ
	 FwYeQ6OLi1QAkx65fyTR2GH3OyxCdx1vwYRCq2TzUFhTWWsycyJXdianZ7WKry3OOV
	 SAOdoEaQYRQwivCeuD4gbDTS04d4GLCwDeebSxIqXD5cXRWo9F0qzhpuQH6GotomMF
	 Rl29oX3pCNTsrkSaoowTANsVOL1kYYRN+tPA0xqqrNO3csHWHbyES9X6p7lw9jbvQ2
	 XTOwPbg01wzyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557F3C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259945334.25849.17093110502955170115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3245370c8d77d83616be3fcffc01c1e40b356dbdd48b203ed10195bbdf7104
Date: Thu, 08 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662599453
