Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D9E4C60
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DFCC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681673825;
	bh=cCJu4Af98Xw7UjBaHA+WDYRRigbJMpE1CBZEUAwzJIU=;
	h=To:Subject:From:Date:From;
	b=ozGHeNW51JCX9VdpzgHZNpHy1kNDxsc/2/5R+rm/y1JOYVreeIZbrrAiThccnfQOb
	 KvP4eSxIdG1Fq2tq4xD6cpIGquYYedwTKgC2/LkQGM5c0gZRGk/fg/hxiFWR8FAhvp
	 oaYQE6RrmuHA90ieSHf0wZqOnCwMrceU6wpeS3b3J5toof+56s5xalfqAt6jwzpa48
	 UdCgAgJlHj05bObzLnrq1MtgHwxNvHz9APYEUzaleMDAh9ccfYQ71oShpC94jxLXO8
	 T8Y3D/gh+eRvpQH3QbqwEFJFLzWJM0qvQhfeGM4d9z62atAqc2TAanEkfF6dGpzg8z
	 Pk3ksXIkQ7rXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2A4C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168167382574.16605.14989418391192876025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e36c81c3f752a7b5d16448096e87f4f4b819b38ed5f548fe321f4cd62fe65a3
Date: Sun, 16 Apr 2023 19:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681673825
