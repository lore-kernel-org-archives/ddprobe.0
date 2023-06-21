Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8D1101C5
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7340C433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687348988;
	bh=CzejeiJNWu2FPkrjXbgbsw0Ev+WuNsjoMhuXiFeeTEU=;
	h=To:Subject:From:Date:From;
	b=WfoifXaISbah0uFMAVhXSNcsu61gNgznzRRTyIugOp+OEBiQi1pK16+47PDl8vNW2
	 AJK9OceoGEG8FLyBd75YNf11SHOLEVc1HV/EIrc17v7nITZ05UVGXb3BuBf8Yfd+5/
	 ufINLfh2cH/vicYY22OR8u64i0vvpKKIMUYKsDlvKy+DlV5FEJwyXlJ2iPl4i9f5af
	 Gal4J79mK5fJYuNZV3BdiqWC7xWTkGOoh3Pee5Hq9S28iJUgcObph9oJbhzqJqofOQ
	 2PYUD/Liv4u2mg5nN1Bq3UOBmRiwK07uMsD2UZL1oLUbzdqc5jmOJajJvNtZQrlO2W
	 v4xqEIIXktuQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61ACEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168734898872.5080.15793277561910685473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb3d46f4909e771743063910bb45e5b589b038f95438ffa72cb6cee5727424d
Date: Wed, 21 Jun 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687348988
