Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB36F3229
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707D2C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667818254;
	bh=RhVbS06l4lIeNAs5X2nq/fXxFmNBAAloS/yR0gaO8DA=;
	h=To:Subject:From:Date:From;
	b=BurTB2Lfj73czy5hMDPGNfBJelQs2Sg9HopPhTIClJqmaxdBLelOwzpV2U7XCHx8D
	 aWlA/CaTyLAYJdbDhCmvYf05KPvnT1Gnp13wfohQmqkFQd1UJ8ybGtnusP6SS7w4Z9
	 tmQYgkBVneV4Ah4XhKx9Q9vkszRYJV9rmlOlUA9uoyQmogzyoNvW5esoMqrqZIHZYU
	 N3JAIWPcHkfyKRceQO+/6WZZVUEBj8xrD/NWPSf8L1wcMv7h4hNj1Z+Nc4NzPJ+6pT
	 YT9YGfb1gsaczQFRneb+DEzaaSIaZ7FWV0gW56hHV2mpc++Aq7VXhB4lNNkO2wATr+
	 4QxH/lsenANCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569B4C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166781825434.32602.13958867625034523108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5953e8430525d76680b4ae0020f2294bcaac637a92b90221c0953a6b87476776
Date: Mon, 07 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667818254
