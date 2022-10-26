Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFF87B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 790B3C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666827053;
	bh=6GlVmSMEww1dN65AStZMwFRleTkbbY3loJd5qthpkn4=;
	h=To:Subject:From:Date:From;
	b=BCZB/MnObljkjKqLHr1sG72YkkN0/kignsAt6zvsFNTWVX9ZQ1umw4lQaZYWtnJtX
	 90+FkAMUO3ZR70Ng4gOpx958LInpCYh6PgeQK40XIrhq2FuR4OfIfi+UmFsaB078c7
	 Jal6MNPsib5hMt22Ph5+cYKIYkaBNJwTZWFHgQtX2l9Jsgn5La2N36qa5OIdmqTKfN
	 Rec7cZxRq1/KdKfw73+nW8O9cWTyGPvDZ6Yo6HVofBRk/ZX4C/BIX8am+iXfBy/Tlc
	 3ZiaKN+ktQSV0/BZYSxFvR20ZgPi49o3/Ozn3f0eLwW3miTRIZ0bhneybZQOgDj/Hi
	 +Ms2tmeYav9vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4EBC38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166682705334.30656.2752112243276940910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262cae50ad5e14f4ea5d10b885ee1955246ea8a9639f3760f2c730a8539a1431
Date: Wed, 26 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666827053
