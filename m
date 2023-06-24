Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615F9362
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0109C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687582388;
	bh=Zs+TTivsrQxUk1FtjKZLTcIIEtEZ1yvuXx0IXJjqm04=;
	h=To:Subject:From:Date:From;
	b=Ygs0FeRwTvrVVUrTNcg9Vf0NLTIKJL5gp6rD8r89nmN8GE5fqFL7ipuJ0UcDN0bKr
	 FQ2APPaT6MepQZhzc99ngDoytZclaN+Ar2p+iBeOc5KS1v1n+GLBZyx9Q1sKoxkhhy
	 21m9unKohphbH8hCR5BuG0Bewbbbuy/bHK+2xWDXBVYxAGEAvFnEbS/0lL0564ixNA
	 c8yOVrEeMc74bAdbBAjijY40CNlLtAsfhCO/K8ns08lnwE7mmm0XTSykqQ8BDsEdR2
	 liOTySQhwPWTbLri5ldPIkMVkRX6A3purbJpHZiws27uvBX7wSbsB+GS2xiJqDWgnK
	 4XXv/+fcI1V6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A746AEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758238866.29214.14244733637683099040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8536229e3095203c9935e1a623007b619ef89bcd255871ffe421e0243cca6dff
Date: Sat, 24 Jun 2023 04:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687582388
