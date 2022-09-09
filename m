Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9559612F
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7815AC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662761453;
	bh=xEDdZom8YVkoU93uXd2w1MEbdaq5rNpJGsj2vitwIcU=;
	h=To:Subject:From:Date:From;
	b=d4WFTe4pwtynMsexKAefHP6UFe8/vD1QltR1kw9PwTU0beKFwC4LNIeMD7a/XDQY0
	 IqOqvfB3qnJNpVu1gF/RDiDQSHFbkIwBTKKCzf9WphYPhysah3P8Jx0em0rVrCGvs9
	 Ktmw1366PK1QqzB9Cn5rseSKL7xjAPcUNSEMxwqTkXB0D1OWyrAymb7IzNuBxHUEG2
	 udWEp9BtaZCgbN/jPR6eGkpxNGtfZAq5ZeEBkz23bB0CtIP0zDvELr1fpdn1wFjjm9
	 JC5w9uytP/kmnUd1jCG5A8n6qHN12FIjwGfc+5ljA2VYBvYErjmWP0/dQB1MU94WfY
	 au57m9OeZPQaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F730ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276145338.13884.13498719908040463456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1158ad0e6225115c38dfa5301796b0c3943cadfde1cf939083e1169fe91cf2f6
Date: Fri, 09 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662761453
