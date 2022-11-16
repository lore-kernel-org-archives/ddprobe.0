Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB032CA4
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F16C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668639654;
	bh=ODrn3ZhfBTBkga6wvqheS2bVROmB3zo3GpyQ/YUfzyg=;
	h=To:Subject:From:Date:From;
	b=AZsnoHnPgQz7xeW584UBBM+aOSEUc+JADxa8ks28ENtsvd8Gr/+5PjByj2bI3eNIv
	 tUx1+xxZ4O4yF9zjh3tgA622qa+YHSPPEv05FySFNQvb2rvZFlOvj9UarblvgTr6uV
	 168ec7akbZdzkuGfhS0WxGH2Z/Sjm1FSJh3rDv263UNqbrV7tPF8aRau4A2W9Dbgj7
	 SqpTaCkucsYun/RH8/XlZWkHMCujBHYPayMvCq2nRiighaclMhFmLGGXIv1LcnrARi
	 oxpjpeZq9yLZMRdJQeV9GMR77jpt6USCeyaXxEOS3HqzzIXmUiu+uw0AfPKP807s7R
	 DoyUVJKeD920A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1A2C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863965437.10069.5603444902410424899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8c08f133fe696bc4e0f88851ce145e28e1094342a5b777b790d3ef535261f4
Date: Wed, 16 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668639654
