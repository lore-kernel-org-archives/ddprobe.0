Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A8D200BA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 10:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E96ABC433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 10:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685613905;
	bh=qFIK/wMQoPWgM4hyrzoBseDp42tjw+7B8ncqeCRYHgw=;
	h=To:Subject:From:Date:From;
	b=VyIihQ6/hx7BOsthVkmRh8cnnxz8eEVzqGdm5aGGF+P3VGr8Pkgh/qMK+LXlXKwtr
	 k1Aa/2onwB/OP3eqHkBN/2sPsFeTb3K82q/LWBr5vE+0qjwl2+PZ4D+GJLPaKgsVQp
	 3eWN+cScue3gcjxNEA+7bt+jH2fOa13nj5U1lbCcvxyPI06AnJNVERmABq+Fby16qJ
	 afoTf6P/39alDvu/OI+EaJGtNUGPiHXyVkq9gzEuUIj3KtMkTRTBqnXbhSB2IP68GK
	 GtOF4AkmsYy3LvUcSUJlBp1PO70ar/3HHYAIUuSCBoo1d9qfHuMbzQ5N2VU7tCdT7C
	 DQOvAeAPrS2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC59C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 10:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168561390582.13126.8030003368868085043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde711c2a67c92bf83efa32e68f6a8e06832a8f147617d844d5c261681c61b0c
Date: Thu, 01 Jun 2023 10:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685613905
