Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235B513AF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CedrvxDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9249CC433CB
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699701496;
	bh=MMfE+az2DuznqxK5eAKtFKMGJM0HstR4fV2nkux7JGQ=;
	h=To:Subject:From:Date:From;
	b=CedrvxDNcbVGA0f3+XDAwnlSHm298qIKsMZ+DoQQn6B4tKYz/+6fAgaEOz1/JbnSm
	 l1V6eyavTYncz3h8mbQn8uXZYzqnAHJZw8jq9uZ5vJCgas14DxWdIeadNjJrxAShgT
	 quOZnHh9OU2+KPJypVzN+M3riLJkwikBAjpRSiAQd/Khl3kLLEMBBIuNTLFuGbpHNf
	 thN1tXD4rZJBbD4qAxKf6ClfOgjLJmpZrWpSI/mt86gxSpbMxZtiDnMfCIGEG5UmDz
	 9qRJwOYsZt7toX8P4KWdH59OoWgFGuT6LIhGpir9kL+P1mMR0Ja+3VPAv7+t3idBnu
	 eDOTPpk9p7Prg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7471CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970149646.22335.288841969691718028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e528ece1f0ca9e97448c52759a63980ec80c48aa3cb120bd2a35ba9d0989111d
Date: Sat, 11 Nov 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699701496
