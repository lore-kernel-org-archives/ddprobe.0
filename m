Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4268A48
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA59C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668970854;
	bh=nrD0MGgCg8xV30mJjRb3hnv7pi7rZmQvh8hogw7n5JM=;
	h=To:Subject:From:Date:From;
	b=CHJJWDucG2TIF+zq0Zk3YQXl5ooW/ZGy7z/08mLln6lGR0rUa6KkZePKCMlX2ZHHJ
	 cGVD0Uj/aIDDFzW+3GufF5/dOKTiB3NBkX424sRu5Dimr5dUY9Ie4IQBGr5DtEzRlZ
	 eEkW6nWJ22DaPEiNfn3wpaLz/DcfrpBQiJipIYvocehXqYc6tbcIH0jBLhOFOzTMNo
	 mYJRR/89trM8vQr1jY1LU8mHm1WR0jlr/9QYnYRROzj/F68T6d129+VU62TwpywK6V
	 zv20tw8yFwjPtlmAwTbVZOfQVNS1DmZj5ADeDH9TFkqJE/XIxYqtVIEkzIN8qT6y/s
	 zBQP5AsndSR/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E66EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897085436.8468.13931630443863204533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e6bae9f66cfa6ca90c0cbbc8ee7ca2230b7b93799fd8887abe7f0b3f3789b4
Date: Sun, 20 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668970854
