Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C113C7B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4A9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664366453;
	bh=8gJbTdA8Gj87Ssn7o2TkdhcH6srOym6c9sUuB1B08XA=;
	h=To:Subject:From:Date:From;
	b=QJlaMaCexcVeo1TjQg7KyFG1kgXHO/7Lycp8taKOQ8iPHB8rjFr2E7KzqqoHY5030
	 0KlfweL4iUh8VCcaIvdE5dVjg6vaYaL2wkuitc2UiytBk64xjUjM3x4B7vfSsrfedO
	 GPkESKoaMSihHXRP8VG9zZLaqIVTyUotLJGq+a5zDqwDYuQJvawlKJwbBhzTXXMZWF
	 3/2dyZG1rDYo6zlnaOSQtCRmDcsIiJOp2GJlfHa7oi58X7Y0lYObymfdHyI3SYKAxZ
	 xPZ5CQjfm3EED3JgU0/CoKmp3b7tC+5GxB+iL3/jcU7EUqJMKWcoJ6OfK7xVa6D8qi
	 0/6b88ecoUG2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CAEC32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436645333.32678.16444562925652242067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec1eff99037d7c459bbdf740bb99230248629665356980c48f5756307c8e474
Date: Wed, 28 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664366453
