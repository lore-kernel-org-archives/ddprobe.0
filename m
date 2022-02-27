Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F312F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645945884;
	h=To:Subject:From:Message-Id:Date;
	bh=Gsz0YVA76/Yd3NkNoZCKYY4YyQ5Ic8KqMtwIUrNtGuU=;
	b=VMagJ6alztvt8bdXTRqUHxNHUBtU+3wjFFQAwdIfmA9RRSbd2LkiwmJKePecQXJI
	9NuvHGMs6FJXwTce+ZKB9/wEwmlvSe/BFh+6fPXix0D6hNBBkN/FUvnxKSngmKcpLcE
	7GaHAtdVf949WJ0T0mWxNUReFYb7ORsZqbA7u9n4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645945884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gsz0YVA76/Yd3NkNoZCKYY4YyQ5Ic8KqMtwIUrNtGuU=;
	b=OOer/dJTIOvR1Cy+eUaCyLCNG8jS7JGa3h6dKP6Cfzade2T5ALDgnTs63S6aA/UB
	9qQfb8nQTdcr25Uwft0QQO/iC1nNpFfwMSi3N+iZlw13DncwrVceO2izqPU/blnhbZ1
	/IYPaQmDF5z9oCaIjZ8pJSr6J8cYdJd/+NAfyw5I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a051050-a2a97540-eb4c-4915-9b99-f574340d7a0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1616245e1f479176a1799fe3213dfc30d2d72979b361f006a58de00398864502
Date: Sun, 27 Feb 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645945884
