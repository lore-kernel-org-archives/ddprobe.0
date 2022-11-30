Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC3F17C
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 734EAC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669776054;
	bh=KgSLpj4is2ZJgtzm/4chrUNOxpKtxA6didGmDLFz62s=;
	h=To:Subject:From:Date:From;
	b=q0MhA68QOrdzcZhYCx8GvEkHgvXq9JWXEUBQGWHETuNR+rJRBN42rzhSexhgDwDpW
	 2vCmfGj6rz5391isVweYphT8GjwXze0V5o8WW/MbCmod0/N5Aag5qwEzkcuc94QWOA
	 kHe5fBqgC32hRUNclgzG++qat/fETpnrbKIv8P4kJgcBDO23j3ukqdQLdsMBLpDrzh
	 NQFcDUJTJHzWobna9CBIK21njVDnwH7BJzqB/QILoIFUsihogOIdIOyECHoRpc35sr
	 yP4f2i/+a9u57ZL0YsPYzGwK58f+5g/4OPPwr7EqmAbI78+Xq7Qt98uILELg3giTgb
	 rtvEpLsVacSJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58214C4167B
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166977605435.5259.5236221704971260792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f366f11e6a3859e5c8ea45e0d02ae37bf23ed812ae25a6e0aa99211fc301536
Date: Wed, 30 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669776054
