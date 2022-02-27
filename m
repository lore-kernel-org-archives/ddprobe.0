Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7347B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646002285;
	h=To:Subject:From:Message-Id:Date;
	bh=JQ2B7hOat63HPvJz9XkJ8dhogBm1igNd2HPM/Wl5FP4=;
	b=lzNW7c1syIFGGIWGvFM5EaE/7vHnl85qASDd3Oie4dUTgDJoPuvLFFVRUXdbspwv
	dvZROiZ6IEKnIM0T7V3xWLKjSXpXxtJcXn8UB5OLSjQFHIu74kp4Yuc6eOEcURirVL/
	VhMoADfplH3ytQYjP10EwX4vVqyYTs1JxCnCtkEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646002285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JQ2B7hOat63HPvJz9XkJ8dhogBm1igNd2HPM/Wl5FP4=;
	b=VX0MVG7lPL7fB1JmZlgOsuNXfidQhors4AnuA7wEyxwFlDbJXKIXJIwaLKEVXt1W
	QvCdaRmQzMufLzU5BswRsvxjHnUT3t0bii/K5syHTMAd7ZRlRWP3WW0PHhcVC8di3Ub
	aAZj1OGJIYjyC/9Q/KUmC4uIkyfXSrhqJbh6JCoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d61a8c2-8b2a6d29-8b65-43fa-aa2e-9b53bdc4109e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bc39ad0cd3925e20c6e7d10d81d3ab69f996a36c2829d30b6d720f419793a9d
Date: Sun, 27 Feb 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646002284
