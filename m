Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896D03200
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645188685;
	h=To:Subject:From:Message-Id:Date;
	bh=TmHHRYo6RcV9ZkYSh4eHZeyMs9mDZY2CBYxn3+IRSlA=;
	b=JNBPePMjbsVml2JZqWGHRNOglXX0T1i1ozfGgldEZ7koz3A22ALLrthyc742mAYi
	cj2T5rMXoXGp8auayeUudzypb4k8qSkJGtkE8IpsJcP7KuBTELkLjK79eI7RwLMZm79
	QdM7VX2Bo0O7QIXGteQHLyZG8xS4ZHeKqg9I8NEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645188685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TmHHRYo6RcV9ZkYSh4eHZeyMs9mDZY2CBYxn3+IRSlA=;
	b=MJ/b8KF+USdgVHhKctu7YVkXg7vXpR/MoI2CGzUM7mMtVKhvuyLfMCwXD6xbMXa3
	3Mmu7zMKhs/nCQVYCgHJQKVOt1VKHXvxijQKbN+TmuN3ufdfhTqhkUYhzlSxDPJ/0yu
	hjIqqsbkC8VK4yTxNbVo2lQMNAbF5iLSPBWNuL30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ce31c52-28d54b31-4d64-4e62-a479-f47dabf34b71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b4beeb8f9bc3bfb82580eb47ff21c4884bf950751021fde55d47d4234cc4f28
Date: Fri, 18 Feb 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645188684
