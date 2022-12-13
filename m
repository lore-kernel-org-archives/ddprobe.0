Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6BC15B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A2BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670893287;
	bh=a95Uiwwd0MtNsVgsEE0+ZB4VV9qTKJ0CpzXPfZoa99Y=;
	h=To:Subject:From:Date:From;
	b=s2Z9w4jx+NNCWHuOMMFLyMJM4ffWAzTDFyOAS744o9Xq6MOyS0P6fh3QsmQ9UqsMB
	 SzykWh+FULx8lsFMoeCEDsPSZm/w4XwnnWFZolnczLFCMI3xRtyKQSZ9QDx8nxKH0h
	 Hr8ijY0ARvF7NNx59NGyRz4LLaKtc14j9rEQxRa8l686uLF2aB9YrynVCDdiHMxyOP
	 GG/WSpcYiRGHgBhhddreSBWRXXBfQlyp9CqyHdCQUX0JvAWlI0eSvy5hORbNF/5fJo
	 ZyGMlHBDICvEi3Ck3aeQyQu3b67jTLqRQWRGg4kBMFK6ItYm+WwP4Ey3T9Ms9nMySz
	 yGtxc6t2ZCpzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68373C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089328741.9324.9312649078001482447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83de7bb673c05d64aa3b35ed14b81ca8bfe83d49d0ccd55d47b8046febfdd2e3
Date: Tue, 13 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670893287
