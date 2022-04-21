Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2724C7A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 13:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650549058;
	h=To:Subject:From:Message-Id:Date;
	bh=cAA96y4ERtP8B7QJlcZXMVc1in0H5zxQiqH7aH2KN6s=;
	b=m0OJzSmzB/9lHQd+iJE2e2+A6Xeh9licwu5cJvFOlxPA5Eux+ItMCKqH39OrKvJ8
	oz7HxxE4wPp/wtElAFSi5FccDH6jCUmJo07Oy1WBtAb+JqYJ4vd8XFmUrOOunfDosTY
	ZtUGIGEb7/IkFsMrfR9hV+uZ70nQzRbHYru2zjcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650549058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cAA96y4ERtP8B7QJlcZXMVc1in0H5zxQiqH7aH2KN6s=;
	b=IfxwFJUwWB7z4nx5vdFyF0isLbBlceLJZnW3lR2zg1Vhp+BCV7Co16/5jVSVCnew
	WNXig8MOgGbrZRXE8nAuDrlC9f7QKEiMW6ub7nyGmQho4FfzklW8xqBT1EQyX4GQF1r
	3+NbTt3uvUGVdFZjz+T/2ORwM+oSv7ZKCq+kYez8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804c63ead4-20f75017-e319-484e-9b32-9daede7d9bac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f867bddab80bd8a0bda433525e3a22cdc5bc74469398be3008e1f44e74920ac
Date: Thu, 21 Apr 2022 13:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650549058
