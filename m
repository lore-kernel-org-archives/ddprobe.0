Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828533D5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D5AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674843785;
	bh=IkvCXx0+RZFm7dROlIyGZUUusWZhruoMMbWawJQxsg0=;
	h=To:Subject:From:Date:From;
	b=WRBpraJPkvHb1VaMup6F9IrXnXFa8mX5yAIq25MyhsyZ0Cm/K1IfdPcC16Lov5jO3
	 4QFlpyd1s74w3ReE/IiFgfMZvLJw7c5xtTgLjBamNMYAB6D+HdU6S27HKLg6Jx4Sn2
	 omMiU5fjMWOoM3JEUf07w6N/8++2IsHnfLWbgq7WxUdKHgYUHPtmSaAG6L/RAjMijM
	 YirCUcoZQI2zfZVDOw4uPaBkV3i6E6mIuvIL74Ho8x/LkvnBqNB1tqvR7hIM7UERvo
	 grGzrWxGPZSvS0+1HYdN9UCGj1IyUvjMhZJAqDVMvKOIgm/1nKGqDrAGbpyFLga1Mp
	 2xzkZ3ajLZ5Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE95C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 18:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167484378576.28079.618077550408976348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c543fb91a23a7f03c47cc8ed3b94c019c6ed5c78c62ce84d03421ddb19a9cff9
Date: Fri, 27 Jan 2023 18:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674843785
