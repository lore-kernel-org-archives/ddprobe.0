Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7C01FB5
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 07:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6722C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 07:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677138305;
	bh=9wjhUZVk1rfMYuPBYz3+RnCAFbD1B5LW6utT7MFsCSA=;
	h=To:Subject:From:Date:From;
	b=I5dg69T9Q5XjgGANn1dxBq6Mvp7YoGczpGUF3QqIfKQk+OzfoEbnhNx+R3vYkcVkI
	 i/LyjO5XDwdoEjS8KZ13q3v8847O5fG1Fw/DOd2dIdwjf8CpHKBsGTXiELQbdB/ovy
	 bUxhX/P+IZifE/q70zNc68cwBVCbTFgOa1k8MW3UxiWwO7saHpJ5C9WqDibCHyWK3g
	 P9UK4EyaAR+07e+p8wMika/Kz4+0oAk76I9xYco595FztgZzLnQbFVyIrnhpnT6z5l
	 vzz5Lo5AE108RHybmoztIQJ5YtbvjjB85SFnwdsEUMSEMAuzl2/4o2B5cSZDq+iLvp
	 8y0N0V7splukg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB97C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 07:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167713830574.13091.17492243092058988251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d449b84ec62ee84cbe81e97ba52e7ba852fbbf645b96106d054786c0536a89
Date: Thu, 23 Feb 2023 07:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677138305
