Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F56C8BE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 15:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2112C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 15:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680794886;
	bh=l9nN/FqPHNWP7GUy4IU1RoU7+dm7yMgfMtVOd/S5Mdo=;
	h=To:Subject:From:Date:From;
	b=WNxroXyF/Nb2qHPE8fjFINIXgyUwyCYfakqvJnabkOmsw7qAbSxAWjUE0vaUlQQB3
	 EMdPxw2Yh6ISff90H5+S84GcUx3+MEBzNpRzajz+RUyMMAaaoW2M23LZ8kqoqjKC8C
	 ep/kjcBTv9COhTxVFtNmu7lhcqSzk0gMy2qRPO1bSEC2Cd07vtA6M/EId5VU3BW+Zy
	 1LtqLMaWBoD8nEAUJQfbsrXBeP8lcbZyMCmrRXxn/6oNb+wBt29vxEQ+JFyzSP1X2P
	 6/oWASJVDNXzOxf/dxBQlCJWZrRrx7f6MZ8ow2zg+/tNCpJxA61owXKCJKmFRIr9hj
	 SWwHHm7DUlj5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00CEC76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 15:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168079488581.31809.7714359419641663970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52fca31165e8450c29d5dda19e847a2ef60e0dafb53760996e1c587d2649e7a
Date: Thu, 06 Apr 2023 15:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680794885
