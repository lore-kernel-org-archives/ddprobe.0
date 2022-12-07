Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9712376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E3EC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670376054;
	bh=JRHrF4zoM+swlp47RXOs5CbcDFgSAxRTEl1YtJOTTSM=;
	h=To:Subject:From:Date:From;
	b=PsgTqje8wn4VL0WRfmBU64smORY4sBZKGFwyH5cvSQq/OoMYv8UBbBtL9DzE6bOrA
	 MQVvbGtZByT/Z+vxVrvD+iJlM0flTJJnBtrSbaqBx5mGPU89WkNQAgEluT7dz2TIR0
	 uGtgVcB4lag3wumsFeogBUW7SPuJkRd9PY5ry8o944nj8uNRn9goyDmWfIfsD6LKnz
	 m2MMzRyhhvlfJ6YZU/kI+KX0UXAj/cwYxwmGQsn3H/AEYo/8PNB6khr9DOjNBQsGZy
	 KPiQRl5u1C89PA7tqGwvO3tcmbSUzcNYRxfFnczRx6BoXx9UOQ76N04e/4FjbLIBHR
	 90ty4laM7iA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62785C3A5A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037605438.31785.12307132969650787323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ffec2ce120811add7225ad9fe901103277e196b3b3d623447c0772339a7fce
Date: Wed, 07 Dec 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670376054
