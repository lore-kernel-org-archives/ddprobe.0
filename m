Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60D536B
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6699AC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670488854;
	bh=qzJSroqFpbimNIyYf1aQqSgXzArZuVrZtQA0BhMhbeE=;
	h=To:Subject:From:Date:From;
	b=PHCCOweCxxaM6UjSXDV/IoMymre8m2WV5WTWIT5L+7x155GznhNhMsv+f8GAWVja4
	 jPFQuzfhrAs6Ry6QVi4T5T28X/7l9hGrNdXJ+pZebm1te6wVQVTQjAgNxytNNDaa1p
	 JFr+ylkJ6H3E59gnc4SpInkZKzfqy90SXn9rSTuzUtW90CEgCgnZsq70jCzL/bL9XR
	 W1dtqPAfQ2L7u/+7iGiWEemwAQBFgzAumEGTt9/03xAqwAG64AWsXpIkDwpILqAEhT
	 2H0LSHamTTg4+DmoCUY1DDC6Oh4GvHVkFmyHQ1p0wFMcJ9skJ+MSSfXvhpSoi/n9j1
	 Rc/ah8a68TtBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F767C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048885431.19349.9435796441809358072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401b7914d417e5a195fd959066805d4d4c8f372ebfb03ed1246474b073e6c606
Date: Thu, 08 Dec 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670488854
