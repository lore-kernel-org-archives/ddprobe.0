Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F25C168DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB54C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687356188;
	bh=GpdSm7HZOMUnwuX3nHt99mwqMUBRtq6c8Dwc4C90oHU=;
	h=To:Subject:From:Date:From;
	b=GaCO18IvHqjH8PlESrL4NTrIdaVNMaQLskkLs6ks7oq3mgsleHLJp75rDhpkX3MJv
	 kM1xpVxIARGTnySmHVpIebBlYfAlc6jk0C3BogP92CUy2Siqy5Um6khZZ3HnS+EXzA
	 7LTwbafbq6RLFlY3SltSj23kz8aphP6e1BF3oSzp5dT1j1ErRdSPIX7RLRaXudRSy4
	 BavG0IrizAGJBatClWfEGtblsW0wnmXwdfGYuiKg4/wddh8/Yw1LkgbqlpTQ2yhJEx
	 oPWG87UOAZULVuvD9n59j7dQPhlMwl/idmbSJEFyH2fMebOKA/b6zsEbe7z8/emkJ8
	 40Lv0iJhnVA3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E5DEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 14:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168735618867.13332.8435134994505380992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c06e7df0c236ea997c9d9552bbc43e1e76bcc4d8c43bdcf4871eef40c61a541
Date: Wed, 21 Jun 2023 14:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687356188
