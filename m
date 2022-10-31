Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34BE17CC5
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC23C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667197254;
	bh=KbRQAX1SjVqCz7eKr0+EYwKERGrlcS7B02aCUsIh6zg=;
	h=To:Subject:From:Date:From;
	b=TJf9ZlR2y4rZ3vxIfAIGq+QM1/N0AhB0kYAKs04gRvhfa5XMUEeESq1aWUe+LKgUB
	 hx7utikfiZPJQyHgtJ0JwGRP5mYLmo8oHCPZ3ON1A5In7FRmnwU4IoB0bQg0Vh8/z7
	 JUd8A2M6M5RkHcryXhUYJ/0TxJ3/rSV7IfjscO2m2zGGEZGnpHvC77wwzRbt3wb5iJ
	 bvTkqzjmTdEB4fPW2jpoGluob34rJ4K6Ye2hIUhLzoJ0E1B0j+gqAx+Ob5JMb48nIE
	 95zJShhmNEZsc19BBtfLhNSn65b1qWuC5NM83jMgOOM0MpSPMz0z3UaTxDbRRklROD
	 kAF4ibw0grh6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D527FA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166719725436.7161.1408592830997748269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6178ef8c539ed7d4e6a3424b79caccad336031b6bd207600c963bd86271ab02
Date: Mon, 31 Oct 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667197254
