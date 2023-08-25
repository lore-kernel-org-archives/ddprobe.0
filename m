Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A45174E6
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 22:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C984FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 22:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693004048;
	bh=PyAygMiCDvFzX4fzz2cfxBHPiEcsyU4qAIlTf/cL8bU=;
	h=To:Subject:From:Date:From;
	b=GYAQZi2OJv242B7mkINd94LW2UZFoEefFYM7Im/0lQg0uEo5Ka2SfOCA6ii+JtLui
	 H7xsql/0LzUUxr/KP56vHzy6XGkDaV3lBisx6zK88YBsFTTsVLJmf3FSX0mxJS906u
	 muNaTHSSeV/Uqt5gfjP2IN8nmzKuEYuKZIppjsEnVVvtDYw45r9a8Wq7YwPn0ARnhN
	 VpWFEK8IryUGu0IlT7WoKzB+7EnInu8Lc8Qca+8laHUAF/v39IVpV6nQYcRpqq7icL
	 jPohpQGxC+DBlPVyzFTd7q1T2Hu9V1+qqX4XJohtOw1/PHnZeE30HnjkAKJEPpwsZk
	 v7QXppVkWyfxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951CC83F01
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 22:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169300404868.27566.11753716980537989126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192b5ce79617eb28a7fdde8019052e38534a514e4e37787be1d99548f03bb030
Date: Fri, 25 Aug 2023 22:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693004048
