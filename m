Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FC12CA2
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BFDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665488453;
	bh=o09huf2/SlfbnXsPWFcmc4PWNWg7FymqZQHZ7Qsqqeg=;
	h=To:Subject:From:Date:From;
	b=Kjr7Q8BBFb3qopQjon9S2ljXM+psIjj8v1wfPdOEqESkrvJ5cOkf/Th9ZWfT5SNF/
	 wDfkd9OTcGdEMfzT2eDAGv26Y3ZtcjMWtZCIdrNNCd8ZWrUsqqWT2ZKfxpgD8AfvmK
	 JTDMpEP5NsQqtoFE67CtaQlYjcAq3MstsF7Zvg9QvmGAY/icXVHcc9f0x3LqxsBQrU
	 EZZ8udI7CSByeRpUh9E6/Kq+5fnC0fRjDUgtAFeLlzvNb04gIsUf4fJH1K9NeEZPCE
	 4SAAwxKtwrS6jWTq3+7bUtC5jxzgzk/+gGweN1D2hdqh6Mhirpdh+aLHgtdExYM4mg
	 UQn1idTvfaa9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E55C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548845333.5666.8631911293969973207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3bc9f98985fe1dcc7f770c647fe23ecec36aee7b22cde54c844aa6562206cce
Date: Tue, 11 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665488453
