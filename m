Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E6C1FA4
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C565BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690759328;
	bh=CdBIbCNS3vP4sitZunDZNv08UjKywx365cOBhTWeaQY=;
	h=To:Subject:From:Date:From;
	b=OTS0L99z1ZqDfJ0Z9rg7vS8gmsdTRw9cML+BVUDr5qNCvZNJfLWXpR6P3iRVKg0S2
	 JjrDf/KUDBBLSAg+CXQDIypm+ghJBSluIjjg1eDnW1ZFJ/g9UrrWSmbVBSRBVpQr0D
	 1oyvywuhO8rZxHjG9/BXU6AvR0BZ7TH+TCq0/hQqlvn2pfufA24ccXhozkfXm6d7jL
	 VA6WVgdW/e7Mt18bxY+CCygdyVCStHW+2hZ8VnLLgydQNNKNX1mCv8Iai7WMLjKc2H
	 kdIXIQt3pekfMAPlCz+JQW3m2aGjrSU4PlfleDTwLquqN1PrmkCx+wBvS7q3gIxY2v
	 CWJRMD4pw5mIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1C2EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 23:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169075932868.13328.9589956666139953477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c6029563ff4138c429003487fb04bd74b7057dd12818971c5085de59aa0360
Date: Sun, 30 Jul 2023 23:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690759328
