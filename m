Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BCC632
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661137853;
	h=To:Subject:From:Message-Id:Date;
	bh=KZInOYykrbdsl1M5i5D0bOv0VfihEhbtHUabLtuQHDU=;
	b=U6Xc23/1sVkOHuhVW1EXLrUZnC7SNAOh2zCWd3vDodq/pG5kDxWVZNrj0198KFMt
	xNQMqtQ+Wt+kCBHDxuMzawJLKDjm+yL0L8c69KBJPU9xBNH6+E5/CYo0/FfRgK0Qkx1
	i3Q7R4Ux1Y7LLjq15kDOoZVoz45gsBWfoF8hfGvE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661137853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KZInOYykrbdsl1M5i5D0bOv0VfihEhbtHUabLtuQHDU=;
	b=cAgP1F3TXAw6fqMJhammWn+NUX6w4kSbTo3g/HDkr2SwMmVeGvi+OSfT7bMtn7Jq
	HIy5Mn9lujpWyhUTCW1LSi14sywP0DErmE8G4wzbn0VEXVd8CkjoYZceGbbIsv9KL/7
	e8hA42z7K5CzQZnQMq5bU2QsnYzKhs9fCHe8XD5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c38818bb-d9fed42e-8bc9-465c-9c5a-04603e3467c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5568e0e7ccee064ef00bac22175bc60d8e5b3228c5a4bbb80d71d5bab2376fa7
Date: Mon, 22 Aug 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661137852
