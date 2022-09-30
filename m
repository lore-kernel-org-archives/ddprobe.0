Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6237186B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717BBC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664516453;
	bh=5TvajIZhelr3XkkCrEuBC8F+S26A4iRo9NYLC2XcAuc=;
	h=To:Subject:From:Date:From;
	b=Cuiwtub9A7Eik5z/E62ukXggEh1gM/C2zqB37iWA30eEyaVj+4r5yVg6rnaZfVN2H
	 Es03Ryhkj9nzbQ7tAoEFXpMHB2fBZZbpl5Gz4cPUzVNnzQHmnOYoyjSfbT6G5ip3D1
	 H/+LbMeeFugSJiHm5KCjn46DQvZwHOgj9LGBzjA3uPDt9PlftTi4pmABM0UxU2FgqX
	 NbM/amFEEZcUNms/awIgqCx7DhE7nZ+UmsWZhl8yii3GPmobOvz0434mb68wZIpGiC
	 xgzCj7aSC1iBvezml/o0X3RP91n8yig5NDyEMvJDLnYAUf4pNbaSp4nzOqOJl/sah2
	 MeGOVOo3wvgZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541DDC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451645333.15316.6328004421412257231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19142207058ec4d1b8a0d792117a022a0d1b8071c329fde13454574b1601e8a7
Date: Fri, 30 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664516453
