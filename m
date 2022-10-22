Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63377C
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786DBC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666421453;
	bh=EmR7E67ypL88yFIBakocIfCBeNh23PwNJa8fAqwYmI4=;
	h=To:Subject:From:Date:From;
	b=RG81R9WFFwr9e7Gp3a1P1z5yQ5k6bq75Avo/DsFmFQFZARIDBWtB2U0UvBe6KXjYm
	 ZYrhoQ+M22q1KDrHYyxuH/qP0yAYZVHiKzfEld2TVmWwCzhOgHHG0kzuANwH4SFVK+
	 vLmLXCBrkJzpxeEgUj6ZDyMPBlzavrbz/FOR54k9Sr23UrK0EJuF7vUwxQfywbcenl
	 Vj0MKaYnURtkCxNqJyLYLYL726V3o5zKE9yD1ZmkPc3XjM/rphulUoAj/aKxtrZc0a
	 xrAV2uFOnkABQMiV1ArrhQZB4Zk1aK4LGd9iG9nI/5yBXa4ghuYLwZyebEJXVKIjYm
	 26qOUeYmG8RfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57358C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642145334.31049.9139062069570831704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be6631122b7a8618832f4f269feebc9ee55cc3b4f25b0ab8b3dea46c3fca78d
Date: Sat, 22 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666421453
