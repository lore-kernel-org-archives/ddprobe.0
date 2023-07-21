Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF3327F12
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 21:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA2EEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 21:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689976328;
	bh=qFfJ50ztK0+15heipu/WU/b4pA4DcLrupqjMr6S9dSc=;
	h=To:Subject:From:Date:From;
	b=FWXdn87GLBnnoPdVINQxPTQvGPaBYJShxQv/AUEEjAzWEToUk1WhWuViXxvQSzbjU
	 1XYzvGDvuowhPOOTnmFpvA//WUoYd/XjTilyw6X+Khy4AJbSo9T3HDdMGzgAkksbOf
	 uyljUXO1gfCM7Md0cMBUqU/khJKW0+iLr4P+1Zl/Imhs2IPOqfnLiabvpBwSRbYc5o
	 jFt/m6Xxq1M83Okb8g9XPf12N7+7KZlPJRjmTSgTFAXLD/ikCXw9WThnhYeZmyFJKH
	 xUo+hJes88KBGxQMuQ+KsxkMsHYHwf1bdFswk9elbb7IKpxAUag8ViCNMUnLXyVAg9
	 8mm9P+O/zAv3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CF6EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 21:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168997632876.10173.667338232362899692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6f11deb7fa8b6deb8b0bb9c2aa43612927fc13c76db2694d36ad4ac1392d87
Date: Fri, 21 Jul 2023 21:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689976328
