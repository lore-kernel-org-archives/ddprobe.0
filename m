Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C155248CD
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646037385;
	h=To:Subject:From:Message-Id:Date;
	bh=yfA3z9h8HEr2xaLkJ9RCnYdAa4aAmF/uuHR/mg+OP5s=;
	b=kw+WHtm2Wq4ClrfQ+PH9wWIw/0yh/CmiC1Crj0bqSC7LGr1JF59vPXNWKNrawH5X
	oKV9KdWB3wZx5Cwqkr9GKzV+pI6wodOvP3bBwTYgh3uzE6ZJVDWzot1HaQlCNvOgAIK
	gU/Wh2dSXDtF1wgN0fHW/WycfE90Ox7lUc4AL9/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646037385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yfA3z9h8HEr2xaLkJ9RCnYdAa4aAmF/uuHR/mg+OP5s=;
	b=li+yS45ayvvruH7xuOB+LIeZFQkBM6wQFclXfvS5vuSHrKZwUdeybn2RbKzxJ9Wq
	qKPucULcEDvoxTgZn+K68MwF/H++RudoqiEvNHktvfkk+fwtBKh3MITYhpzzy65gAKA
	YnI7Jbe3wJ+id4AkpJ1FJZchKorNyYCcLLH9ztpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f793e24-ee271bc7-64ce-4062-a868-5526d631896e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 696ebf5b894c91128ff4fab9292a0ab05b346740d25c9c5239bf2c3f200d0264
Date: Mon, 28 Feb 2022 08:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646037384
