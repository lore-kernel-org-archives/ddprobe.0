Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79A423D5
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 828BBC433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667732454;
	bh=0Xd/t8NL6ZUPj2Sw3oDAefLBosG40ps5Uu4o73n5CkI=;
	h=To:Subject:From:Date:From;
	b=aiy7wdW0NgUs4Y8sc6NohPq9C6izRES3NyCvX4crY7HqSQkH2RwzkQf9n80cMdu8k
	 LiBSV0uQq3bq9L5EKRnzI3cj0615b81NuJq065UpinIbgq/eA20FIpbcUw6AU+mgTq
	 +woHeaud+UaJCY01V2ESy8ShWtcKIkpbrbMNFnO3qOcnAdFQRFlLEwgvyhO/eSmSZr
	 VEQiT6dmaUuUus9X/2h47u9J8ORo8eo3GRkaXqS2r/jz8R0LOnHvFvfdt9SYG7vjEO
	 PNI/ttfVrDGkW1G/4+ntawblcHDpZJ2XqdLkOU4P5y3ViGCyE6an1jZJ5/n+RiWqN4
	 sFNiQI48jz0ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56309C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166773245432.2847.11964137511923741034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74c0d10341ea680816720f2dd1fc2210b6e3b31bc10efccc2e53366a1582945
Date: Sun, 06 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667732454
