Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2C217C9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8B8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664138453;
	bh=hrDnlUIkEvuVupWaBjdGQ7ZZhrB6TKLYUpAgRwPdH8Q=;
	h=To:Subject:From:Date:From;
	b=ufrVi9RHo9MwTVzaslyqLWPyuRVlkDik6Bzuj7vkmu0TrBlnZ4U5bTfJZXwZ/b2Em
	 dZzAClp6vxXXWakbplaHyp9YDswHblT38W0XS+3gezxWqitEeTr1hnK10KDymiR8LE
	 CkZJoFN1UvYNZOz3a9hWOqp9UGoB19St7VW9xD48NWvh3kQP25TBILZzBD8UbbTCTP
	 Y/SkUAVICbAGzqxgfQQJwXbeeuWIo3igmnihRm6ml4uPpLANtmnhcyENqVOg5wdUTz
	 Rs57Hdn6+yyjGbxQosxNoHY5wsktV5DaZhZbzvY6DTYGp7twQDLtRPEjG6poaHNqlS
	 YyM7ab5KUe6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555A6C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166413845334.2783.11830579318446237405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a117c1fa0388bca8740394781fc0bd892bb15a31029969d4a45e8c5418a140
Date: Sun, 25 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664138453
