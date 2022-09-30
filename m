Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05187B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C6AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664520053;
	bh=DHX/tL9Yy+xyvGAQ7u+iA8vC8SA+/gv63qeJ3BRU48Y=;
	h=To:Subject:From:Date:From;
	b=ZtF12CyJuJYOGucIpMEcdwL5F784E8o0e0/xdHgcL4cNA8D9piyX1XlMBMlk8WUod
	 EbXJ0zc6WoCBdNW5sP6bPDs74xY8TzVY1vPxO2oeL7v3A7oy/TSI6FGeOS9aoDJ0CF
	 3H+C8Wgts6qJSwO+rQPZNnUQAklhfhMg+sHQk84NowKR9ok4wBuQVGzI5TXZmIO5O6
	 NecMBO4sSfzE8hQ29P43ufW/aoCFtIsWSpVfuuI9+mYhMdTtNDAWVOCQfUitfj0/WD
	 AaLrZbIh4hN3S++iSDzxFe2s/kgKZJ9qsjEQSci3WMhxOtqaA0mlTgPqu+7aU/xBiM
	 MT7mlkvb6Pu1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54502C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166452005333.9725.2344978817681457271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467880bc39732ceea1c329aa38f2754c7a248ef1f854cab1fab5404ee65f573c
Date: Fri, 30 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664520053
