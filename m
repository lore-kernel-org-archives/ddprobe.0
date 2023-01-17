Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1891FB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 878C3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673965887;
	bh=qUioGm7yH63x1swvrRmGdIzCuVaiiv7gV90B+Rl8YfY=;
	h=To:Subject:From:Date:From;
	b=X9uMvYquvgr2HRns6v73003+WyVcza4VIyEibiGsVHe+G0GpnltvIK09o3VEWKAW2
	 EfbSnt7KRMippCPRmiFcuihKm0WpiYbBxUO3Kp8PGe462linsDfwi5SIp8DurW67Zu
	 UkrFfuFBbtTXJXsLp/3OhED7ccrBiRhXxnhNIb57AaNo9B6mk0rgVy1slRmNHLx0TZ
	 cK0Lea+DDlIJJIXped6tKm2fG2YuRSG0FoNGbOuLUYHrMDcLDf9CGdZVIpQuVtnDAL
	 ic5OwVywwmKin2oh//FZYmt4UKBSergxXSmcJALOls12WlwAHr4Wk3yVYGD67G36os
	 I3Crg5JCZyBtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF56C63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167396588742.30660.14620062835819393735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b275b9870e30571eb06ac97154a1ab1060823e0204750583f72c2177bb3dfd6c
Date: Tue, 17 Jan 2023 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673965887
