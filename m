Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42271A939
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB81EC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678819685;
	bh=Uxzoekt05TpYqBXwW19juzJirpYqNlhO2lJKx5NVZIg=;
	h=To:Subject:From:Date:From;
	b=rC1Yli1A4JPuclU2IKpcmvc44ghLZoVGcEmBep4u63bQntcZddZwEipAA6lkN3IXq
	 2BvQyj8wqWtjCFd9aGWfNxsZh1Ztd5/4GzcFcyICY4Le9ErghOrcdGfK0VPlCCG1eg
	 jKqbndczHvS0WBlFlqGj9hdUTfhTFQntdkRp3nX1NHzl5fqmc5JZfXqwDuTa7zA6aF
	 Rl+fkXYUbdjQ66b0YeK2cDCWAO0ZlM4T+y48eSfIMp3QA8wkrmFfo8hROYWeQxxNOg
	 mhpSo5+mSsLvvehd9+JuvANIc25D9zG2RyCCsXKTcSD7DpvTXKrQDWgYy0qI12HeLW
	 /vMbyFv3x5JPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF619C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167881968577.28644.17144455446789756625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476ddeef4a1b63aa2c920f2642bcbb8549f0949eaaf33822ef3b53f8638c7dc4
Date: Tue, 14 Mar 2023 18:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678819685
