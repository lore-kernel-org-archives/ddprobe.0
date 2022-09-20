Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A71AD748E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65021C433D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663697453;
	bh=vP0sU2pE9voex96bnUG8QlR2QmOwxKB4mtBP4GqgkVE=;
	h=To:Subject:From:Date:From;
	b=sW/7t6QjqHdi0HHkF1gMbjxqjmDMBLbQVzKJAmhzsggJkoTRDUDoJBAQUD8i8AJ4L
	 9ffKUwmMveEdX9UB459CNLfFwcX8zWEJzhEx6+o/ENSNRJg8MGV/NNf8LpkMqF+PIb
	 X+J5+Dha0jayglL6EtXLvk6zVSUfDFZvWS3ktDtfO8tZsrTKxIDIicOL+8bY3t0/9y
	 uS+c6ZZmh8PW3Jgj7IA0q20+boq3MqG5MByFxPGqW6KrhBiSz7IOTNssNDnKCTqOd8
	 F380ToO8XS3+3LVs5PQM+3ookBNjgBDjYTgy0WDNixzvLlYFRFEho1di7TJwxzvbG2
	 cAeYE4uyzxIyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2A1C6FA90
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369745331.3533.11381887105385888679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3425091697acf0ebf4e93944200ab960e8f25e657eff5d62dea7dfb41d7dd6
Date: Tue, 20 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663697453
