Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97395A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 642A3C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664563853;
	bh=o9jA6ldP75easycLObRYIDBIffy/gyYiDd94IvQqU0A=;
	h=To:Subject:From:Date:From;
	b=U9K8pbnuPqLkLJOKvFhq5PBYk/lUlhsndsW2SJ3qbqUnnQl2Olb80Uv6oKKPDTY5F
	 esgZ+ekzCPvGE54rS5wmgWm8T9fqMtcrEBYmKyurGtJHK1lNNh/5xovnuJ/v9nNwle
	 ZQem26DpRmtj1YwksEqrmfd9rWtZczwFgtf6rLAbv3wMmOdB1ToLbggcr8wr05Xs2s
	 +AlX4XO7ISFKbn9+9aXNgwUupR0H4qFwEPVS7Ud3kJBKHtLBk8VJBxi0BJM+vq3346
	 Y//21NgJX3lITzuQlF5INik3cXoGp81lKbKxdv0tw66jfw6UJ78lCizOKs4O5rM+Jw
	 w5DDpUKSt++KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA2EC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456385331.1584.6895424545455319630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79236bcafccc0ccb5ddd41788a5208fedbd2622a31cb73e70f5cb98033ceb093
Date: Fri, 30 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664563853
