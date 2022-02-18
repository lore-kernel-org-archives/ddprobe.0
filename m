Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82374321D
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645162885;
	h=To:Subject:From:Message-Id:Date;
	bh=09ZdaxOdZxfb+H3MWulNt6rfcyr/xOu50eRXK/KlkCo=;
	b=LkXVWbDcQDX3ripX+BclLy0LlsDLxikaPxH5tYwJjWKKXR/bEcFtkA9sCLsBBfy6
	wmQAgUaUbbHKcStYyS66uDA0ftgt8Gl+N7zOirzpBM6puQPJvNtWWZ6rrGtZfw6mtRH
	dnU7oRIGp82nN9DdANWwhHKr4JN8fJNPm6pIhAKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645162885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=09ZdaxOdZxfb+H3MWulNt6rfcyr/xOu50eRXK/KlkCo=;
	b=cNPYLRwafi5V8r9aB8pyuPaN6TTxqG7KG09B1WC1t4cO70t4ZxPcUmMzsQOXqBPo
	22ClnW6nwU2ZJmU0RR/01tQViYzMVLfnzRrb8/q4VNicLXsmvYfDDpGcCc0HqNt5i12
	CN+wqmt0HsUUYvQwxZ54orlXViedl/DhQrkFOCUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b596ec2-0ea69f4a-52ab-44c5-be25-b3db07c5a9d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55f669b419bbe5dcf875249cc464bec7bada5f01fd33c94a01505dd2ad15ca3b
Date: Fri, 18 Feb 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645162884
