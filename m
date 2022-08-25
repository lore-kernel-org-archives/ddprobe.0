Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02162F28
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3BDC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661429452;
	bh=rxPSGyHM5KZCY+xPlqrUUhz07EOBqNvxB17jakBW8SQ=;
	h=To:Subject:From:Date:From;
	b=LPbEcbFQnyZiqNmt5xgBSIUcNnV6zWqsaaw57kpfhHSbwxS4iydIFht0hH+S3rPID
	 xNaG9CQkbfQK0kgtAR7kkcNIdxcR5dkLKHT8EjmD216Go7nSi65uGhrYKQU3IL+UsO
	 I8j0FXpc0qp6jpyXt/HtC+daltYYfDbZDRibqa2prmcqO9dJc+lI2NaCSiArZEr4SA
	 LUbqx9mRsgw1P3CUgZR5HioQjYxw2sP/Mw7ToS4YBkGxBVeHRe7TOkA4kK79wBYHG5
	 L+RzRI+NG88iM9xftuScAHegYj7pM3AVCc7ZmvNMEoV0mVyhuMYMGMPwGbtvdQiKYH
	 43w2f3JlCBPeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B71C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142945234.11701.13846515914480847383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4a202263ffab531c4543d1007105a8af6aa1471751b0c72f4c44d1ea3b3ab4
Date: Thu, 25 Aug 2022 12:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661429452
