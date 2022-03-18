Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E8715A7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647621985;
	h=To:Subject:From:Message-Id:Date;
	bh=UP8ES1VgWlvoPI5whGhyTtOLmRrtLULpr/p+orXUKq0=;
	b=YUqfgDvR/iz63YaPmfe1aOurUn9N3KPoF7aLv39uoLCujJmx0dYHOVOiAGkZ/j+Z
	gvFVs+Drx0HLqstQHUwDJRASQQsTQACe+TeNQtJdbG5M2KdhWDpmSZvLWqmJkEWj949
	BEGdjnghUKJp9jFFsesaH4BrI5J4T733iWRCZYXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647621985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UP8ES1VgWlvoPI5whGhyTtOLmRrtLULpr/p+orXUKq0=;
	b=ABY0fTLx1JHAa00YIyH8HJKKrVQhhYh1iCXh/fYIcLp1WOTRRhuzEAmAhoxZcCwO
	1Nc4mFlIYDKgKin/g9MBJL7rasxnFF52op2/KwP4F/V7fFAnNx4Ugxqj8bdHrADjZj6
	UL9m40r1zpnXRNEayZsYxOaKXrH1VX6zwCzbi3YI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9dec51ff-d79b903c-6d46-4954-93b0-a6baa474ad0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30d95f3be97e9b6a54eabb1aea352e2c5b42aa33d8f904da9bc6ec9b778391eb
Date: Fri, 18 Mar 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647621984
