Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509382628D
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82CFC43397
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695054908;
	bh=x/Q4n7WNTDCd45LuWlyKvTNwOU+1qWQFUVqxd9pYMiI=;
	h=To:Subject:From:Date:From;
	b=YE2zOZGmLaYyWv/tRuNAdY1CuIq3ihogyHCDDASFjKsSn7ruyORqF0PBTz8DaQppL
	 DgzqA2isqFVfaZOHNOnGfDJnmlqCZ0ggRgrCqWZFuTK7j6xrbkVJLivCok19TCZcbs
	 YV1WfdeZ/W0kKVGJel1OJFYZd5RtspSg3Tj8MoE7Ihm2C+ezaBA/kbhDeCsAm38xVr
	 zsX8UojuvNdQ0PbZESQnIDaBrRX/5LVG7b/gZ2FDoWsSuCeU9EBLh1vZHdpXFU4/xf
	 3Nm6+KrXvYD6wFAUUxkN1ovNtCcLiYl7+jRBv/tQJL44WHdNWhTSxOFYQGd6k8qXxB
	 O4ZP9qif9yzcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2DFCD37B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 16:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169505490871.7223.17758246393009780652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da9065254a5596d05fd3a16d181707908b5a455f44b8332065ae3df2bd72c9a
Date: Mon, 18 Sep 2023 16:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695054908
