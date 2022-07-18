Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150CC320D
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658164012;
	h=To:Subject:From:Message-Id:Date;
	bh=4/9iXcx50SbsQoApgaYzbMqDqITbY3iScIjp091fLOY=;
	b=dUQNvvWbyAZrJ1F1TKZ2SwfRDw5bn7aZyFNa2emGuOh4SYXzQG0fGxLp1F8L9/2Q
	B7lWdeujoLTr8JYsqQMQF0X4wzU7l4PDnHY36rk3No0jxAS84DPXD1i0WP5+45nyFgB
	BEwmbS6H9V1tjoHLjgtZFOSKa0uhqHmMboGh0iQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658164012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4/9iXcx50SbsQoApgaYzbMqDqITbY3iScIjp091fLOY=;
	b=ZGGACjzeYxU2B7IvLT8cm7i7FYdEUrAy0Dn33eUyhflQYDNaj+XQW/pggEKdyLf6
	wfUtEHzN7exSx17FenmI2F2hzIiEVn4rEb/t53tGBrOUOExuldz9eS3hXO5rwsRQ9JO
	y0HYu9nb43jMNbVxhYlwos4guHSMd/bTUr5t1ics=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821246e4e9-b7a75dd0-b92d-4364-9519-e5290d45cbb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 958dc511e4c57a39ae6620242b70d2bd0ff63f51f7006a7a022d941919f967ee
Date: Mon, 18 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658164012
