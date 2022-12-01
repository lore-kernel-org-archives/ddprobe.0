Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AFD1116
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723AAC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669891254;
	bh=FKEYgH9UXeWnHU6pzfQAQmkSXg7CCTdbAm2/ONH40rM=;
	h=To:Subject:From:Date:From;
	b=TiYHZ3Rt+5uUYT54LlVqQArU2pSqMubPCiOxbnlfd1LMy/EQwhJLHdrPJgxhlQY/k
	 ozrkGQLrhKYvKoD0aszGX6OEaQJzNOz+J5E9h8hJ5yiIVWYU7EDharY6KQAScL0V69
	 QRvveBAh8eFCm7Rilu3GsRV9Y/KYrRjMuOHqATfqwaksC/4bKnJpbTZVlRWt1mQICa
	 EuEBux9JPj9hiD5XdySoJIsiVd5cGKJs2LhoZjqO2JlqDkReaevOOUl3Pb4tAn6S/I
	 iy+Ii8jH5m5psROqJBPqEjaYlg7Qa0iJNIWLO4PzUGVC/ZdUi9bfhAo9aDq0EzB4LZ
	 dZWKKEQEfnqvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB85C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166989125436.1334.15165501333465611515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdea5cbbf45458e214ec801faa45b144d28c74158add58633476e017409cc70a
Date: Thu, 01 Dec 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669891254
