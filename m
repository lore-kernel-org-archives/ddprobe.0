Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3617E7F
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD029C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675406165;
	bh=Z1wkU4qXMtZCG3UZYs0LISqwlFvcYesLFUoiP4uWer8=;
	h=To:Subject:From:Date:From;
	b=I9YOamGoREUoEi3vNbGfeUXGEABV7k80BbjAlLzikLvzntKs0YHpGapSvvVtGBJ1g
	 EJhAt7vd3CqaJx3QXixS6A6kp3sYbPaOXqTm0urjshUSJlYqRdW0cm75T7g3NZ20NQ
	 lIhh+oSgIiE55CyDzzmxBIg1brU3qPEZa6hOYWpoQxXZSq7zTUgZQEs07pInaLR/m2
	 F0WXv2UAhnp7IxbVs/veOi+iqudiv8UwNfrjl/2Bw1mAuasns3VG2DZyQ9oBgOzxHp
	 UxXg5gxJlWXCq4s+4DFlM9BNVR8JD4F/2iuFSZcoUq/XwcuJYL6uVKdr4LnTxBMg9b
	 lDMGOfAVfooRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3860C636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 06:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167540616579.16416.4224388002652788045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f839fc0f4d9d2ac59a9ada697cc4f0dfeb62e89241d07c60f73e46bb805ecd86
Date: Fri, 03 Feb 2023 06:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675406165
