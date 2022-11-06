Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A272CA4
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AF9C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667778054;
	bh=Bx+gStm+zesjtev2HWZNuawf+1mnZczRbg9sjKvUEks=;
	h=To:Subject:From:Date:From;
	b=IBmUYwkn14856JweG42RYEVwqpCd7Sa229fQj+62j3/7/4yityNJczSW8KD6xo1kK
	 2sqsGf2G1yAglxSK54elfaRD5XJzlZJfHhx1uvUBgLYilPKm0BbdPqvbSseRoIS0eH
	 mZmfwxb9pwKs0+Azsw1pDmFBnTNTV75GwAL/TORFtVF6a1M1o9+upEnR/v/fGgv+hS
	 F6ZbDtaIDO4AkN+mgOl7xCDHjF3ippW0OlMhXDbUU2TqGDwT7n0g0BP7TeNrz0AWvm
	 GsqPRJHRiu04WQ3GHvojXuhSEAbsrcu9OTCd0qG+22cCS1/H8Hel+sdCh3NykQxiLc
	 fGF63sxxRo1ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C886C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166777805433.12719.13775360745329044345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f1d4d6dd0a1fc1def0fb3165b60d8ffa549ac052f42eabc832f6045688cbcc
Date: Sun, 06 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667778054
