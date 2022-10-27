Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B6610EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC87C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666832454;
	bh=sbL0kaS3ZLd5gNG608GbL5RuYjGtte1gcC4aCsqNSEk=;
	h=To:Subject:From:Date:From;
	b=aC90oXBYcaEDBTmBfhfQsuYtE1UVJdkiHGKLszcgF2A71rAx0b9lpFANjJl9E69XY
	 7CWf9urnw9h5wgP3QOEziPvqWsv4t2WjWJgyRt4vuRV9G9sueIE9C44EokwU00hHiZ
	 YUhz+9XEADAHciF1ECM8AU2RwYv4hldqKTD1xoc8vdgNystOkrAGk2vKEV3MVxTEPt
	 dRuA+4qDbgr+JQ6WeKIWVsdOTJmISibotI88s2r12Q5QMfyfAHw8aftbv76Rwk78qY
	 CkT6tKosRcrjsiXIXBz+aEn03lv3AiRHa42NylGaMXLeYsQLxar3bQlbxoSNnEi5z/
	 Yg9keNAWBW/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50067C433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683245432.2537.9637341061828192889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9ca144043523e4a47b122fcf95cfd32ac4697b1454d0e9948d715764e8537a
Date: Thu, 27 Oct 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666832454
