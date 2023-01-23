Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1EAA4F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF5DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674463926;
	bh=1VKtlCx/EgKybj7QRRwFPl+Q3CjP+5i1/5ENMlxdW6E=;
	h=To:Subject:From:Date:From;
	b=TB18tSl1RQNMd2GKIuoC+WtvPPBpdZNNiD74c59wZIqukSRhkcTSLqoRaffz+GBeY
	 IzyQ2ySi/04aRvmj6kYS3+1gS7q/bNx6BZYbMvgxYb2g2Who2u1BIIdkJruJg/upV3
	 Z2KfENxVhQCaCT4D6YB30OKHqULRj6Xv0KtWBxbDjGvvP+JL4wUIl1G7Xb3vEIe6PL
	 hDJwAE3z6XcaMsPRPkzNbszX34ssVqaZNiEtwFnrucyHI4epAS3bPS1cwqi2rV0Kem
	 Del94gXkHjUDGyTboGRTg14r94fL3ZZ+Zhq6ARDeHbICIP3I+O/pG4bnwbLxqM95E5
	 RoHbgfJQeWUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE896C38142
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167446392583.21548.7127813927856402060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7b842a2eb05cf903278a581dad0fc2f61ef5314e7170d8254c3b8c9c68a97b
Date: Mon, 23 Jan 2023 08:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674463925
