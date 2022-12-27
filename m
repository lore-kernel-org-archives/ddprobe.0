Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF546620
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 922FAC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672100487;
	bh=EqQgk3WAIzJYY9gI1ak0pHlakahEs/lpdXRabwYnOJI=;
	h=To:Subject:From:Date:From;
	b=ZIvMco6KC2wN8dl77gzGjZvxVeFezbrDdkxdRJsysC8tDayCRFKH2Mtz78NN1KaPn
	 e7lMeN1cgOI+O/FZrIcUbn5NwB0WBSkK6T3YXMRFcE4EpD5oB80h9NlxsQH6pSXuB6
	 YMFETXLoIdM5yM0UsD7YVOYKgRVQvFDGuE0DbVC3lUpVvhmUwW3SNka0GxZSQ52l8Q
	 DlFcqSVFNvOStQNgoBUi8u1OLcgEbm4V/zAOCnKd5doVpQVZfLEjfSG/dxxRCruIFM
	 FYySYZ86WSvYt0XrDnOKS/H7WDXfH8/Vd/rL/EpyfNQ8Q32kafPlGCkgLMFa5ucR/a
	 so5f7SEndh4dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72D97C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210048742.24787.13979209779632295247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4814acd3edf0d07dd1c6673674483ef6c84d8fbdf56fa4d7e154d8c6e8e79947
Date: Tue, 27 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672100487
