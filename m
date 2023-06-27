Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CCAC1396
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF231C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687844588;
	bh=gSwVMU9VaLm0/N6PzwqY09LgmkNOCtOvjhn8MrCcIGY=;
	h=To:Subject:From:Date:From;
	b=nPbE5P9J9GWfXdEjaxgdDUYkTmgwrPVm0zDDppkqJQA0+sy9lAcQII5x/c88n3Z5Q
	 TybD7H+7ZyPQQCX4+Xq+eWFEylCpWeA4Rhv4viwrpR/KonpdvjwEhp0TgyHwUE/Prk
	 24ylBpIvIuQEQVSgHqyppUbaPPPORMvA35d1WZ8mlVpo45r3t36Jp9EqCvpUmC88+6
	 PQ5RmFeYdqBKP7R8wrGm/NT2T5Dxgl1LQ8EY+NS8AVSJJbnBdd9TLKrSuHz+6ox3f7
	 fq9WR06wpICciF63UH1C4pU2ryryNPdIMiqCUvj6zGbbX9UfvbwEvOoq6iuDRpfrNZ
	 VuR5Jfbs0a71A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D25EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784458873.5673.5530055514939069035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b1dc65835e954e7990fc4aee5feeb29ff1c582854620e18bd7511090eaa330
Date: Tue, 27 Jun 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687844588
