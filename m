Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF95F1841
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F51C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664506853;
	bh=QDKqYL+9IRt3+zH0Cv4R9SqWW/hTLLuM4VWSnS3bvD0=;
	h=To:Subject:From:Date:From;
	b=sBmxJMIn2hQBWA2oMPxTHPzHqvqDmUtqq9sV8/gjF+UD6wceGO2yrkcJPRYZoZF/l
	 RsTSKFKiLLqvR0Rna8o+Rv9bJaDR3mbDcqlvKJerbQ7MiB+8yHrksq4omQMhnTIgxY
	 em86yRrFtYvAD9nUtOhfn6/E6En+0EvBQ66xE0gSoShIbZvsyQ56iQr63+k5fAjtXs
	 UP3F3SScP1cGLMqFLta2IcUIXb5vayce4B7u1hZGcm/vUwOt6UjKDVoxsZIA+lQ73s
	 jrT3j0VtFq/dA+nWcvMG80UUKvolxoznUenJdJ7dT39M3Jmv9/EPOo14K3rEvuWGc2
	 eotQ8S/f1QQqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5C9C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450685336.20449.13875176676926592100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a13c0e6b45009c6a788fcc70af72c96ba1429c87d9aec2ba0d0d3f035628c9
Date: Fri, 30 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664506853
