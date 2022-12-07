Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E2D361
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF79C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670390454;
	bh=kz08G3f5EsTSJzkzvDBgAHmGewoPQyysmzoWyU6jlvw=;
	h=To:Subject:From:Date:From;
	b=E7IUPYUUfA/ZlgWeopp3drQFn4BPVT4np1cc461Mp15840JL0JknYGgA8Xas9QlK1
	 FuOgcqYF0k6MpdyGKiakS5J2hQYdYFadaQmnkEko15s3xc3JJ5axd9/6KBx9lfDOn3
	 VrWVm6bg3cG6uWeQczoTTlOZOIQ9nxiA3QGcEMlvaZ64QlkLywm/7pOurY0TyOoY4D
	 rIfX6lgu1JmX2aJIe1df56aDNRKP+Zlh7o1U40MF/Dr6XEzpqKVHHf4ph9gEDRMIV4
	 KVdMDghlSVSx5XU6G9+8TuQSwIdcYBwGTeHPAILLM312jWGac406RSoEC5zSnDELP1
	 mlsfllPIG0+FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5406FC47089
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039045433.8439.2880540411610945319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cafd810508476040aeb766e2cae609a8adb7c347fb55d3e12bb7228bdefdc0a
Date: Wed, 07 Dec 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670390454
