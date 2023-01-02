Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A11F5667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49AFC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672682487;
	bh=Djo0HWa6Wi1+nZAr7KnHvSpUvsAQfODBUhLHQpUkXNM=;
	h=To:Subject:From:Date:From;
	b=bOznQfkUnN3qw+Gd5EPXj+T6ZeXpGFekNx939yFmT9aakdyd17xpCneeZ8GoHF04V
	 TyxUQpBxdcrSqxkAmb1xCEYjsss+r1O7dH88PhHdIES5dtptzBUv6gYyXT3VqIAwp2
	 XBCyFZFi55KPxq1pF7ENR9ypQAbTMvgud3Ym53vIo4N49GqdMkY0+QgBIN2Nlm3z/P
	 AeLdo4e87emTPmgArZXrOuYLuNr1c7rOssWvIHjRdsARAQ/yoBgNwRwXnqL2ufdqpN
	 6Qsf7ErYmiNav358vCwT2jF2zcpqvgPAB0XL+RvuNXk5QimvchYY4hduF4KVNr4AWH
	 YFp+N7WthtdSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AD3AC4708D
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268248752.25140.5708958339644112745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5637aab00aa7a0c4b82a0659d79190d05cbc7ddb74b3b8ac0a69c12313d9812
Date: Mon, 02 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672682487
