Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C58AD55
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846E1C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672854087;
	bh=GRpiOGyhkR9IeqTswjsaCpCDv0Sq5LF3n61BjpXpHic=;
	h=To:Subject:From:Date:From;
	b=UcOZvwhMFgTt3pX/0rqfN73tP4KomKBgoNSf3zCbJR80WYLl6/AowdMbZ/fPcvVKb
	 TBOXuozY3S6BbCbjfKjjbnItgqHzTFdY0W2u5j9hmRDr1A1A7CqfQRRJqReLoVaKYE
	 nmduw59cAyCBUKoqtvA/32VTSkktYZSSmygTeL2QZzqrIkeSV83OjYwDGx9fkY8caq
	 bkHc92HD3JdabE3mdjIIR3b2EA1Vf05UhKjlTca6rinhOhIMk/cTAnH0wO4fKId7Ei
	 Xu6ylt0OnoChzl4UfmQhy1ILYVtDZgk3XQaGXLVofHFyFbl12wu1886mSFQwq/fXxw
	 p5nx7gpR8eebQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B200C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285408742.8830.11002845512231336686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a28e321ac9dce817a6dea9ea8e69b9dbf4cea67d885627983d6064469806401
Date: Wed, 04 Jan 2023 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672854087
