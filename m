Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465292F31
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 15:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D3BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 15:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682349725;
	bh=lxfQgIdX5VZGL7uAQGKI6PHLlCCvSXnAivkpBbxQe5Y=;
	h=To:Subject:From:Date:From;
	b=YRsmIOdMJlIMdRxd4AHe8zyEDUBhx0IFylP0/RTrppNu84nRQ2r4ONrVEDSDO9glU
	 Qwz+2mJS4xu3xjWJyUY3toqcW9PEnCqYIpa99ibuxBLHGrKPpoua+6jo5+i0+SczHP
	 zCl8kttgzIKBZGFDJB6G/kStMbGUcEqK4R/IK+y6hI7jKJInlxzqyrNqL0/bAOqiFW
	 hIR+jGsVK/FZesGKuDQn3A/GDQgzt986kcrSgLeSvds20ly8LtPnqaOW+ylVkz9QKv
	 +Hqdi/24a72nORVc5DrVJfGWegS66Yr8cgV38sYhZ4bW9asIRUQGRkRsglELdnQV+k
	 disSFcAsmJTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDEC7C77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 15:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168234972583.6716.13506591946658199379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a4e430e954bb6303fab560139593d5098136a37ba6462231f34e35c9937735
Date: Mon, 24 Apr 2023 15:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682349725
