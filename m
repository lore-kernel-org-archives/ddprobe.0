Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321851105
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 02:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF502C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 02:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680143345;
	bh=245acxoFpfxhnmcR8BJYrNuIXGqeze0EjymdWXXcy/Q=;
	h=To:Subject:From:Date:From;
	b=cv+twlxFLxRqNo1CFf6KyNycTuoA5pVFA/Yq+EqJ4d1a1i9Z2/AweVetzgwEYRaOt
	 CYxb4BoPDq7BAJyKI6jhm2/3pj4IP5AJA/Z3oNQV4w/vdQDjFXZdqDyHrZQvykzBpl
	 i0lgFv1QKRicdWxQJDKEwv7Z6npSRTQyyMraf4t2bMoHhMkd7xYYfZMT/G9TFwYYpv
	 dFOqW8jeM5RD70aapareAGTbtcBiW2oHwBe9tsKMGDpMhO9JOgOMl5yuUPo6Iw4Zw4
	 2E+iRw1RvGMNOs0caeCJ1VwJSf4pZCrSQmniYjrXAborPcJWdeNDpy9m2dwXJcholL
	 eBnfqV3MBDtOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B91B7C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 02:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168014334574.12327.4156835716183131864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f45ea000c7b2e7516aba62cae81811f7ee6d159776bc6b5c24d14c9cdd788f
Date: Thu, 30 Mar 2023 02:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680143345
