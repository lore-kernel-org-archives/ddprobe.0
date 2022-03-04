Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64680A4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646390484;
	h=To:Subject:From:Message-Id:Date;
	bh=kbVVwJyNcawNmjCa9/4tsSMc0v+9OaICWtc9R9Ei6KI=;
	b=dtF6svzFhXm1WvHRRQx9qKLOiKtjVpdJY5GLHl69nOt0DDlEg8DrWLemSPTJXfJL
	Y+5K4/n8PWCK5pxVGXhPXoQ8v6UTEWBpQx+NKJ4wiHAIQatrX2Wzn27CXqpAfajc1Zu
	Ah/FvNy9PfnIT4x5Lgd6nl0J0qI0a5jzTUJY5xw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646390484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kbVVwJyNcawNmjCa9/4tsSMc0v+9OaICWtc9R9Ei6KI=;
	b=DIhk1nw1nv0Vu1KCM+8XjIVpXmXPgY8oLuU3Fgck7tXS7GCIPeuEmdBfPX1k7+b4
	NUYa7njFS/f+CNdpLqga9HLSXUjBlYB27dizcnJEgor01YxwKgNU/CSkGn5c/kP93IB
	8xUcGqdkZPu1TV8Kgu7jZEQoGWB3+d+IO+nT960o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54851eee-d09b906a-1d81-4d04-84be-ebf44bf9b87a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0d3d274f63dc58627a69727d1889fd972f8e65a532953e46b56ea66718309c9
Date: Fri, 4 Mar 2022 10:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646390484
