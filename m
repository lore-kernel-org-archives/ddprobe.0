Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A2F2D7801
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316634; cv=none; b=SH2ArN4CxgWNMT39y/L0te2l95lGNGngj2eJGmcVm2fFh7mMd/uyxAYYuTmZ3Mv6Tc6mZLEJt0gjYNU+R1eZo/WyMaiVEGNzk4DN4qun71hi8/NYlqQRLRMzYY4m3hJ4wBd9da8CGa3oWy7MYnVblS4CYbnU8MZAMhUrCnxq99w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316634; c=relaxed/simple;
	bh=QMh8nUlXbJ32OTUmNd3BzFtTG8OXc5lQplS5glU8HXQ=;
	h=To:Subject:From:Message-Id:Date; b=WOfeuFSy1xq2UoKsI8/W4C92tXDRa2wgPZR8mArhsSju/X1jyFFVzvCKNMdyl1ZGZlJzJy+7YhdqXlz/ccG9LJqTXfudRh96o2z0zquWyGiD5UlLQSU31BFr06/MqlOfddhQ00pCM/KcTFSnpcCYlL1XgISiHeqfQgk1FnBZyoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVU6M2OA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVU6M2OA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1920C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768316633;
	bh=QMh8nUlXbJ32OTUmNd3BzFtTG8OXc5lQplS5glU8HXQ=;
	h=To:Subject:From:Date:From;
	b=UVU6M2OA2xYCBuwm3HzWZhaVp0cBOq6dzW8R0nTljUwKV1dvW96FoY2FFw+025dDq
	 vpRZuZ0xsB/5BEhQjLOjdyqQwGCipn3AIWlWn+OAelsYnay7lcU9S0afWmtNtzYWb7
	 gkRextU3nmkAT262RPvKAroDqqSXWb2Vpxq/G4XCh3t2FxppxVJo4iZb1hDcV7dyNL
	 z5QLq/jMbCbk4iMmGQZRB2yxpIgaPEyEwZqcnWgxQI8gswMlFYBoeYx/ggTPqCX6ku
	 nQtbIZchCN6h7/fewkT/rIFuc7dUVjAOn5DJlwzStcyjcd2H2NAgzJYWIuL7AsZOon
	 M0Ervh9CVvqDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE2FCF45DF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831663358.19851.4650355426446301645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735b306ad7fe601426f842738723b8216a5a64c99614f492173fd961a499f384
Date: Tue, 13 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768316633
