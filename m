Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6A41FA0
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 08:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1B8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681807745;
	bh=eEQzCO4Jok4bNl82kW3k63vEFHJgbIhDo1rX9JzCQiw=;
	h=To:Subject:From:Date:From;
	b=P8yy6UIb5ZZIU8wH6bF5JUjk6viwwmTlMebNY3DQ4YBmax+RMLKlkVi1GccZ/hsUB
	 yQT2DQjyrDwrVJKuvwMTqCGcOnrE7x372hUW0sn4mnigSHn/5n1T7H36ejuEWDNXIe
	 bGJZncueAX4lvMBVc/Bcumgdip9lsacidu4H7ntXMQaFpYDfQ3rBIp5vtgL9io79Vi
	 zw2Egge6NxxCLVMvbZmDjIA/hLsPIogFfI+Shlakkx5bebEoVC68Pk7/Bu+ifEDKfK
	 LK5gEZy61InX3pImHcFgY9zJMfshjaIkV0Xqscw34Y2bArD/urzgTZz0XafBe/aOhQ
	 ByyxqltpBMAcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF26C77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 08:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168180774576.15919.15252938846628771970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a714fe488f0f2e3a80dd4df8edba0ffbc613b11a25effd8f660fd874e2f2ce62
Date: Tue, 18 Apr 2023 08:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681807745
