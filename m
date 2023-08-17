Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E96DDDA5
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1761C433C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692270188;
	bh=rBqdzOGEl6qeJmRpTQ5dpeHIL5JPkmT2MNMc6SpCx34=;
	h=To:Subject:From:Date:From;
	b=g/PrAM5wQ1Fl8SzSfVTYxXNjJA+IFxuemy86ETCwIZInJB5tsB6kzp6azX3kppFOO
	 b1XfWfF8gjEKB81sneWB8g1VZbJZveOSzTHYDM3Ahy7JyMZYiuM274u7oHZwN3GPkZ
	 5d/8gW8qRi2zOv1A42WWia7zv2HYp9CrBCdPLGKNkbCpDKeayaP3SicVUIIjBsM3s1
	 wuRYs0f78qpOcWS4Duxz4ofCvdEfnSZbAcJOwy/4Tp7pScsk6d/5R61AgoSD34gDFr
	 56m/7NTvRtyEUQ0gVUoCXx6GxCQO6/WJqpy13vPbw8l80ao+HglB+klwdoCjeNIZpb
	 JIgYc/NSa9Rng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69A6C2FC14
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169227018867.12577.582148880297569029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b2ac20acb8f73a75d946c5293e2e542b5169f2f68d82d0d546d434b566ae82
Date: Thu, 17 Aug 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692270188
