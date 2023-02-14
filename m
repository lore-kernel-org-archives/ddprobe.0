Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA97C0B4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 16:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECCAEC4339C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 16:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676391966;
	bh=H421IBKtKLqidIkMfCoTcKefCM/gCYnhgvlwYPPWR6A=;
	h=To:Subject:From:Date:From;
	b=poCY0BR1YMOgYGmjaZFMa2yHFCzJHYgE6kyLNgi4m18Yz5nUo72FZC+25gSsKBrMs
	 M6zGxegsXjW6AbMftj/E29ajVQMKsCOQAPYjaXYsT9cPu/DJmZMBwb0NLcnw9WX7kY
	 nod//9Co0bOMldSQ95zW9KjLuR9kqvsNuAB85UTGYPMoUpMv+VtB4FYqYZi1QLVhPN
	 Daj+f1BDTNA9ZEtl76ULAT/634pLbOwz+UjPQvxQ9UT7F0naZChKQvujFQJNSIrRsO
	 oDJ8I/RRuhXaQmvkaw8Qotg078B/vsk7jjxS1v7ttxiJn2szItywOZ7wLcrzBfmFcS
	 QheVHk7rggsWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FC7C64ED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 16:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167639196580.22988.11019728045441048604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef903a2f2e53fdd8625cb7faaeacb61b5e9b39b9a70f1cc71075ac3de74bde4
Date: Tue, 14 Feb 2023 16:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676391965
