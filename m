Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120EF7EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSynaOcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85833C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699403896;
	bh=Lo7Fmltg+F8a6MQSFwRStzEWQNRDKp1BWQOMNErBbJ0=;
	h=To:Subject:From:Date:From;
	b=tSynaOcTQGvSpKwnLiU6fOfVtocZFzM2T23udSnMrD5qY94uMdmd+EOu0L1pkY8ye
	 n1PuA0fZSpRWRFQAnmEP9x0KZOFW9TY1woFcBpTUAtJgBxC5ohMpQD+FgMYESFzphu
	 7aDhSPSbXx1Kt78EJ1A6zusHto8nTn+oQoU5NivOGPaWwIiRf/dxj+JrF0Hltwl8Bj
	 ALNN76J/r9Lk4eKgLpq9EwiXgU3u9Fk5pK/G/Qr32uoGIItmpH+1X5gDbwA0MF56ne
	 sfGiSGbLuXQ8qSDlRRBHs0H10ZopDpuLNnAaV/b6NSgGZrr4QtVXjApJs0VoTsecw+
	 hoHtrj9lOmmPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E8BC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169940389638.28454.7914599531547076821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ab33bd56785c26af95d5b84a6220b431001725b9400db94ce7e0cee962f0e4
Date: Wed, 08 Nov 2023 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699403896
