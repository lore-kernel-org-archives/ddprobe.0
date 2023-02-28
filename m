Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCED367
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 01:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE298C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 01:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677546365;
	bh=jXZ+7MKkhRDR5gGA/gpT1jDzpByZqhxkO14GEU7ulPM=;
	h=To:Subject:From:Date:From;
	b=SnQXjZd1UhZsNQZdWBOdnDk1YDkPtzOOZ2SA3rGahxRn3cz4LYmFeMfbe7AVo8SWq
	 4O8iptyGdUy5RJrU4pSRsKrJAEhw4fDvse1gcuGjRw9QtdNLcL+GYlEmfEyWha/3c8
	 NaobfM2OTnOArU1Y/JdR39SHGuIQvCaeoAs1Sl1dci7AiKHOvtkP7Md/0rsypCRLjM
	 C4B9HIBe9CUkhPLfIGNDlqulvXAVVF13X2ZqSKgBDs3LL3ZzxLmliCWHh8EfLcHsfn
	 elYUw5ifyfH8TkLguWjTmWRY5ICP46uYKFHTt8y6H9FFh2gfoFdoMQA8Q2mH7I57/o
	 UoPpIS5ttumnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEBAC64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 01:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167754636576.15853.14489987462765238931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0013aa81bba7f526e57de8c1b9b151c067ab85ffab16f007498143d93cd0dd8c
Date: Tue, 28 Feb 2023 01:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677546365
