Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B519923AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64A37C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668576054;
	bh=EjGAF1pg0sU2sVA2eOb2eizoYBw+vOGJZValO94aGA8=;
	h=To:Subject:From:Date:From;
	b=oNR51hT7TA01GEv3sWRDnrc1ckdoMVTW3EEtTvHfpK2DMru9moTRpNlXSaKR3i8QF
	 IOTPWVfUDVqtFOpfE+JgNfm/mImVFGZTZqoDl5PpjS37WBGE7r/LIoAQAesAz/Aupl
	 sYN5AxfghyAQEl+NUhMgskB0wIRIYKTaFtWkMHY/I7AfYATJCu+1sFNkfFbP0X/vB1
	 Ws7X5jLo7iUMXLjy+HqoM5ur3zpDUTEC1fDCbAqlQumlVyMGjjXMEpg0QjhUHnHcYF
	 +V+NKrUsvpSwKo4OyNOARByAB9GQGyeug1qA8iIdSnXAC8azD3bm8iOPW794wwsyC+
	 5tNyelw69atbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F338C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166857605431.9145.15246553791858246664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef50cf9256190505247600d5b7c22de8d74e488b6bbbc7213a278543d03147d5
Date: Wed, 16 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668576054
