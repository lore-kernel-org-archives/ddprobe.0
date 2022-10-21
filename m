Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAD76AB5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F7DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666393253;
	bh=JYBeJE9FQvUdREP3R5j7FyFxXr57fZtFO67Elhvyw+g=;
	h=To:Subject:From:Date:From;
	b=MWv6U8FGMGbyXd7Caw+P+W7T1lPJpR9UeHaPjNHhlUwSEGHU8yjykuRyVk2yRbY2f
	 f9VUIrlHgQcRQfdpUVt6TO4j69nB8Cdvydma7i1hmVUbGoD3zoVhMDY7fr61i5s1TL
	 hzj5JczUI5TRQVv1JdDU6WBdgbUmVxWOO21w9ZX86q8LE86ls2NiWckJp2Qz5IagDq
	 ICfU5pGHVApjImqgd8cicaAdalYWNQUn0bTUimNVutufqzjO9I+D7kyl2YdNqj52Dz
	 MuqFnFvCoxQ9qOykbw/Dmn/s3wSU7JeRTbdH8M92a6CJ0VD3wjedPcR+tgvPPULVMk
	 OLyoRm9kT29/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78CBAC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639325348.2280.3196715231139980630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215987573318ea41ecfd7d5949dcc455f8c2156be8a6a01c8964e28eb0f91d98
Date: Fri, 21 Oct 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666393253
