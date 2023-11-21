Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2512D603
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOS8DIpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78515C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700564296;
	bh=psdC9Tcz44EWO6FhsrfB5GhpFl7fuNlT7yVYqEkAYBA=;
	h=To:Subject:From:Date:From;
	b=qOS8DIpyY6slsRq7mDfPA4s7MH5mGXtD2owiEd1Cz3UFiPLdiwymYB2l4MKc7/PG4
	 9ED8nOTecQN5Oh+2WEoi8GaBK+/d+ZvGwgBKuNoajN91PJRjHZS0X8T8Bn8OByyiqt
	 piYRn4WoV7RIV5xaHJCZ2a7bfHrlkoF/KNDqk6OSWuBCs9z0irbz8rwRE69lFKQdSi
	 ZENsbWjdZvNlFzNSMzx9CvUIo9cj6WIkfOoIf4kpiS2rk2TPgIl2IpRcmco69bbl2P
	 oX7AoX35iNojxx3vxNlD8LJG55lFDOvR2sLnKOrPhYACXkQr2Dvscrj5nZWjjW/U4h
	 y2CJW00cdtVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD6AC5ACB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170056429636.27388.18084633265418496918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373b65b974166d36c095d10e9f6a9480a7fb23c5433a056f944c386ada5995ec
Date: Tue, 21 Nov 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700564296
