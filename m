Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9DE2106
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 13:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DE0C433C9
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 13:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696254368;
	bh=PC+A+N/Yoi8qfARxQg8fOSwWdF3wboRexHW+3R2RTPg=;
	h=To:Subject:From:Date:From;
	b=BMDsGuJShB7BptuAweDgzR3V+X1+H3XRHJyaPqNR74ZD1hh+7YWucMtkmdHp+XbP9
	 s4Uy47wnWl8IBm1srSkdbNuEbUanNAOmr5SOV+MVWffDzg3OyTHsvwWGUrZcglKKr7
	 dZouRxG77/1IGaL4vNF4RyyMbrOh2VATnlgGlWdUCYQZfh6lpRYVlxNwEGmFPHyXQo
	 JTK80IDC2RxrdM0W0nozglxU7AuDc7JpSWbY4bc47BXS9pXE2vLArUe5jUKagBQqPi
	 aMpOcYQQ2Qollc46VRKnZzh/mKjDfYSZz6csqDW3FTRcH7ZmJgsI87u59n52R5/Woi
	 u9DQrxR15D9Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD961E784AC
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 13:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169625436870.3330.10365642003785343299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd55aa25584ef518a11804d2f0f7adad43bd7b950e56834d4b6f918f45f771e0
Date: Mon, 02 Oct 2023 13:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696254368
