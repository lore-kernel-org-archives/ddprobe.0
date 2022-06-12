Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E848A42
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 22:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655073239;
	h=To:Subject:From:Message-Id:Date;
	bh=/rfhHcTq9R8zl0vMujjR3VtspJPBMjqTC3jDbVh8EW0=;
	b=ZQ9umOky9nLFEITonDJ6aAcxfiHM8i3X/6qK9oueG9zfHXmbpQyCrHaz91PqHaY8
	PtehgsT6BUsL2Z8ByZZnBhfkSoYFqX+0824kDz+krMckq1drxUORrM/HXy3zZN+uYKR
	YeNy2m1R91StAN1bd7BztmJE0wurtZjrs8cG2pTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655073239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/rfhHcTq9R8zl0vMujjR3VtspJPBMjqTC3jDbVh8EW0=;
	b=JgGNmvAs+xvqLpD+1x0/GxDtkOBPESsotxDoT2/kVWUal13eK+MzlZpEkmtyTB0+
	u6MUgz5KzbUywyJfPBHl5dudB6A4HcuR8B6uXswxIdN6OG/9oyhhjq3rDhGyVyipxbD
	215v0sBKfD9H/tKRITt+kyvyjYiQyP+KpdPFa898=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a0d710c-100fc53e-72c3-42f7-b9ea-98e08e58d992-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec0f2f739d12856a543fced94f2a29f10797428cdd41863a78c850086fd81900
Date: Sun, 12 Jun 2022 22:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655073239
