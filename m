Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBAF7C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EDAC433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670223654;
	bh=x4j6ZWPr5F/iIEz0yLhirZaVJqhi/JnEFr3dBIQVHsM=;
	h=To:Subject:From:Date:From;
	b=Vxma3qowIGpz6E1+/J2Qzspu5+TbjjjMxmkK7W2tJ9egX/uiGOtj83K8PHI90avon
	 A0EoH7GKVXzkFy6QXsHSL7q5IT/qIpFfZa93ORS87eSrV2WYne+GKyh4XKmD21f1Gm
	 Xht74CG6mZ1iNdvYtMJ34KZoQLpZM5PZ9KJ/5Bs2POCed3I7WS11Hbnus9hx8LZJSz
	 kMRZz3hcvgywYGusacfJdRPhFkbKCq61aVnv0QLlMkSzW4Evug9yCDMc19lmQ0HsOn
	 jXoyoP4PXcZHWCbeHg32izQSbpaNQy2eNKnQRYHn6qsamJrmv7Q8aZon34Lf6vbBva
	 X8rvgzY2XyYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B659C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022365436.2959.9925263923052528052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42e012414a2541f7d9406fb0c5e055efd19d3137653e4a8d3bbe9ce676ab423
Date: Mon, 05 Dec 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670223654
