Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92EF7A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 19:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645991785;
	h=To:Subject:From:Message-Id:Date;
	bh=K0AgFLZLtBBx+jIs5/iikPNxhMPMS3sJv9aZ7Z/kpoA=;
	b=FoPBoDFMVex634q5o9Fts7wasRTnaDJY2yZAm0csS5ewXThvqyCdYKMrETx3rqRr
	twCwkOyIPcKQiCb5pj35Bp41mgcQzIOU5UmOtXp359X62xK7tW1d1KA7qKovKwHD/kx
	KX16IjJH57n/hh/RqTjWp/d/3UaVjS2kKvmuot5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645991785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K0AgFLZLtBBx+jIs5/iikPNxhMPMS3sJv9aZ7Z/kpoA=;
	b=EiftUF92/jRM6Am7nwoKLgLyAPwsQI/YeQYkIHssIhJdFFXaaJvRmyRoB+1+cMW4
	5Sxge03NT/XSFldWS2FY6gDzEKc34mqX1sUDSu8VAXMSw/SwsADTJ9N/4IACUhP0EYT
	Ik3c8KuI1EQSE9UU8e8ooVe+mkaK3yaavwZCdHao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cc17197-8d7b2e0c-8187-4a96-a901-d5ff696ec433-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83ff0e72b9985f480be1aacf6da5c4e93a09f3fe58c79e5430413691acea675a
Date: Sun, 27 Feb 2022 19:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645991784
