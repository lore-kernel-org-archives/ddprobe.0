Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FDB8BFC
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92239C433F2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673978487;
	bh=+WCbIOPwa3gMzCyUrrcbOAht8NFV9KV8pFDAaV1rOTk=;
	h=To:Subject:From:Date:From;
	b=b9QbAZkl/U9Zsv72midVs19F11HmkQn4jCvpEnOnl1Bd8AkDrgXUVvy3R4m5DzSxN
	 lbQXCSH7wc/1P8fNDK7DLOyqSK67dZUcLKR3fx/E4BlkFN3uXBlbIoBaY+xBnFCxjq
	 qfthccsB2xQMLpoMQUwkDKckk48a+mYw3FRRP7uorBuNcEWMPXuSC0qvU5cwJIuH0R
	 ZoL46lnjo/jTLTfNmbXx/6t/6OFgcGTm3e/Hj4q06HIyE1LappdOEf/AaU5gRbsLyA
	 LIgkwQ8w+fCvMFIM+HQlX6czlbapDAg+6ngAmlN5k1+TiZW5GiE0bFt4j/ggWUAR0v
	 JXdDnQV2xw5nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BC80C54E76
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167397848742.21363.156121775704790395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f50df6e66527f7f90a69e7374d42200f1f505f6ddbd5853fe549dd3c3d7d24
Date: Tue, 17 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673978487
