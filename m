Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6966514A9D
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AF1C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689055028;
	bh=OJcqrEeDnU+XALy3lkpALzZJF7V1+uhYmxKB2f1SWZk=;
	h=To:Subject:From:Date:From;
	b=SVU47HwZnlMS3wXUe5JQFt8dDka5AX3pF8RBnrndWEkYhFp3RsDHw3eji315xmger
	 QutTywMkOMgSIThmjpUOlwfujPQgRAJW50C5wWCWxFA88TNhSye5iMjIc1q7YvTtq0
	 FYV1d1g4tYsK0YlLfwAULMmzBdrALdRyGTiyFrmInmPjHEpgoovYyp9WvGQHPQ67v0
	 LEKR9UgyJ+Oly77ViWRki/effdSTA3No8jcokstWqh2cGN52mo05tdPbPGBMGrlfZY
	 bRKv+OJBYh5ze+cGZY4UiK8hxFR9cQ4jimidISD3LPQg9meHsKOpqM4S2NiwLrB3yh
	 its0BTCNd9aAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B410AEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 05:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168905502872.9799.4194711495041250737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02544ec0a3ef8fe23c7fe2fb9099b9225d643043b01115c507a41181b1e1c075
Date: Tue, 11 Jul 2023 05:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689055028
