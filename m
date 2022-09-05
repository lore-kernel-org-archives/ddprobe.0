Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF4E4416
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E534C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662392453;
	bh=dsWhf/hSpgh8aZctMm2HFLY53vmSa96xwMshugHj8uo=;
	h=To:Subject:From:Date:From;
	b=FpxVNdQIt0kMA9KrHiFe67E9L+wmXhp1AAFuk5Nvsh1hnSJl4iIrYqlAQFDioihfv
	 oOAgh5XWZlgXUueRVR26fWI51g2ZrhPT0/gg4j62MuWzWS+fKPk0dqGJEQbIkvJMCH
	 Oc89PzCN7i8cnMRnjumPxNK6zRXMBjw4UGB7jSATxtopFMjLgXWuNpWq2JMeSwJRny
	 uVrfrn21ymIEAITsuyOGrFv20qll1CuKHobuo8xsyYOj2h3Xd9BQctInL9bWZaq9bb
	 eZMmcbyQSucOOUgdLFLhUtGGP0nF7Z1yCjUfRNtdfDtisKbHRW8E6gY/nk+I9waneo
	 WFrwNbInSjtgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B3CECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239245333.27799.8517152775778916298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4252d0ad53d7419a2e426c3dd7b2a2f0510bdf556659b307168c2aac52e3d0ef
Date: Mon, 05 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662392453
