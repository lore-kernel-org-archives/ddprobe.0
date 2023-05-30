Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A08B271FB
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 14:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D83C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 14:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685457185;
	bh=8somD9fNYwV/AJ0m99TR1ExxsqYIHBc7bs99/aAtBMY=;
	h=To:Subject:From:Date:From;
	b=UdR+uYhE6fW4sk+RyLdKL/b3qxP/l9xkfZhQZ27IPyALnJsuiXrUFV8EbByxFYKKo
	 kEi+0Oc5iEpaQOmN66g8WxvNjBADu0XU3uGofIO/6YSZdFzhpnTLB2lk0gZmNMtiO/
	 UAFhaN5roQYThQSuHHfucEgxSuhiXt+WuSDfGtB5qpk0wHvEeaufNkIjEXRUm2+YK8
	 gASH7m05Zk4unEzLIY9LDy6pLahPFVbIUyfjA9OO6OlsXUnFh3nXvO9Uq3FlXFTwM3
	 xCtNOq1aA8p0OTWYcrqEDzerhroRI/QQaNBVYGAwLUb1eYlsAz8OblBSWJcGvhOVLb
	 ihwd4CXOC4r2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22A4C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 14:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168545718578.9361.12704667736851639850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4379753c2d6fe64af890eae66887f9a4c35048b4369c9087f496ecfe3a9228c2
Date: Tue, 30 May 2023 14:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685457185
