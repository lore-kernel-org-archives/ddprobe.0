Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3015EC1F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDCCC433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669065654;
	bh=ON07jOB69DveUbTg75N6IrVfpUR5e9SxpuDpP6ZtzGg=;
	h=To:Subject:From:Date:From;
	b=aE/R/+YctTndzTQEZS+R9F2VqHQtnbx2KC1B3z/YOwbQmtnyxgvUGThn4iQzjVZAz
	 b3yzfiwcTw7rhr4a1k7fuHgaPzhCJWKuZm8P6J1EXjw1aNIcJqTzETuwRK3VEpRoHw
	 dtttdAzyhO3rGXOP/1gvIWzfm7DyZ7RbPIUdPf9pbS+ipM8vZC6qBXIk+Gml+uVY1M
	 mIgMJ4u6F4mh8l1eUIyHq5kcuNCcKWMGF4mLaAIjV/xoB+NuB7BENvnnv0O0bUIn5C
	 2NQ1S/uctLGCNRq9LMN257BrueQhAkw5EejRTcHTmXrsQ5RoUigEGbeX0kXvs8nmQ8
	 fB7AcGeqU8sTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524E1C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906565432.1840.6903991214196861157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8811a04659713019ff8264e1fe6663e314de0e67330e38c9cbc5c8fc2d52670
Date: Mon, 21 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669065654
