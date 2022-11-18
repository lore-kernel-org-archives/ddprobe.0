Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2AC5EBE0
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93070C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668814854;
	bh=cmBejOkLc/4RyDWKHcJPIt55Q4IpKXjLq37hKHXAo7s=;
	h=To:Subject:From:Date:From;
	b=oIrpUTqV181IjMQPomEau1oJrJYwcxF1oDR3RUXv9581vp9WANYIv98I3A2z5+qcQ
	 XIOMJ6VJF8uUgCw9jrCktk6psmtHBEZkBmgreYaF5VCr1yeWZLo7QlKfxysFtkEGrG
	 V4GNWoGKibgvOgavMT3hctGm55c01MHB/SQ8kZ73PaoOddvJTuPbshzpunhzFLXCpj
	 vJCMNk0CcK43Oh65NM6UdorU0X5Xye6aU213jngwvSj1H+klTjHoe21KX82swQVnO4
	 J+N1eN0xmYhODZgj4Hnvn0+icZXpuR1u6ixldT5nwP/HQ416niCDu+EZPsjzpB9TJL
	 9/MbXwPwVT2zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF76C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881485442.6035.347968896778500409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a205d5c9bccb7c041b1d378ed6cedb2f5916988f1e0e7eabf7985eb553c385
Date: Fri, 18 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668814854
