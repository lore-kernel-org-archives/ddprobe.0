Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5936B7A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647184884;
	h=To:Subject:From:Message-Id:Date;
	bh=mPe0eEPfhDDvrQ67l0nPnS4+O2Sgllix124mDn0GsE8=;
	b=Iap5SuLr3ODgHxpTOcyoNL5kPVBh0qHuFMP3caLFFtZfSOlzZSAAe+ewSfVOBlnw
	S8LrYFNM1eLmqiFaZfz0LeNbl4QAhDcQZaQqQ34Yk8TD+GulxAOyoplgyJGQHoO/tjN
	XVxvDRdxC/XmzvJ8lWzIqreuH0FQ+g7pMFKcH8ng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647184884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mPe0eEPfhDDvrQ67l0nPnS4+O2Sgllix124mDn0GsE8=;
	b=dfIt0PtNsbBBoSTqU0pohAbR9CGhh9qvFHepSxdhRQ5dkR7QXUl49z2rft15e5vF
	aMZOg9pBk/IG1FuMKP/xL/J4IAMz0dSxjLU6VFNz32qy8l9V3ouajse1f5jQ528ra3b
	+sb05Jj/iRbNHtE5WqkYe7YglLu9Nd6oPvJ5sBuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83deb3df-58853a4f-d6f0-44e7-819b-e082ee6da189-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6eaca01157d37280eec3b05e14dc1f4c1fce30e7451bce5d82fcec800d10ff56
Date: Sun, 13 Mar 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647184884
