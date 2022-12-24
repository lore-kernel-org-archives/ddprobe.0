Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F55210A
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 906B7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671874287;
	bh=JAxI7lK+b1lGU61nWxMPhQNjtt0SKHzY7AROTfzzwMs=;
	h=To:Subject:From:Date:From;
	b=YftntZ20+9rXgJrdpbwxhltb0w6IH2YvCkjrHYmD0wESHPMoXs1uH1J1JN4HVc6Z/
	 Pz7acBb8aJHlpTUnrwGYQGNQMXPRNVLlRtoxNGnOFMKYxl2cvwzH/3kHw0bbtVE36n
	 Qyx2JHm+7dQ1iDIVQLDp0x57CTsz5EZSj2jhvqROl5bdvMrESfrl94BJEerxvNN5Dd
	 DjArk93wWof2KjeCAgHG4CFXm0HSzID7EdhSasYJMfNbCFgBZhRdTyZTJdseDpVecZ
	 DtaA3QGjHqocdpuc2yTWLG/xkG7LILXMN3nPAlMhHo1xMwnpZwP/+CBS1bl7sb6aAq
	 rotKuTFjhDb6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E54C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187428743.10753.17750661186347963054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc20ff4da84fce27e7c843eb8e7fc230b867d928233c8815c94ccf4590e52874
Date: Sat, 24 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671874287
