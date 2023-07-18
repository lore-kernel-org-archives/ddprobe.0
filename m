Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405091FD8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 12:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC63AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 12:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689682268;
	bh=RPcV7bD9eIpxyVsOksvu0WxANOteC3YDYNLtyc99494=;
	h=To:Subject:From:Date:From;
	b=uCefBO2uuqPxmNL0rtaH5SUJ/UPnJqrfMt/J/C99crcEvB66upmTtqODuPQXrk53M
	 mjewb2+ij/EuQMM4sxgGtAtD97PG+v2xzYYsSm0V6vcd05xb6K5j7jyEezn9xbs8OR
	 CpzKL/EkQ/b04t1yux0Ly1qOAzCSDPnEquTOUGpUyURqyuN2FpPqMqy/WaMoCN7o/E
	 iNmMq5tPM4xdxJUYV3/a6db1/WN52Hc7min1le/FlQHW1RBjZLk7LBHo0M6dIrw2r+
	 sxRjp9aKfHYXo7xs3c84tG/U2GFi9x44WgzVmKSsXqpfi1Wzm7FCZpYNjMMve9xeNt
	 qYLn2OpMd/Oqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33E4EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 12:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168968226866.25443.17516836626519001236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f529971f65a26374da583cd9109e98ffb43c42d0e8f21e2b485d009c5da79ea
Date: Tue, 18 Jul 2023 12:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689682268
