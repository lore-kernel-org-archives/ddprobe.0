Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81113513D
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645266084;
	h=To:Subject:From:Message-Id:Date;
	bh=tVdkvb2Z1Ba9rz+GObdo/l3XGOyZN3KvhfgZO7siXmQ=;
	b=aRzSEywKjYc+TkzTY1T9jJXhGFtWEGFUZttN9/3ZCa9DmnW6s2XozfutJONMf9EP
	885BSnfv0Hs7PwinDuQlW2nAupM2KvRCQTrpD8sZnb8KL1pdHmfRT3mtVXQi93MEs0r
	CefK8NIwJYAj0AVUNP6UYTs2LROj4wDqS583WcC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645266084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tVdkvb2Z1Ba9rz+GObdo/l3XGOyZN3KvhfgZO7siXmQ=;
	b=kzilUmUYizfAV+39FJj7xhPcp7syxB8NKFZ9wxgvvCOgM/IRiNUI9UqHI6642RF2
	6xd+Z9f9hrICKMXIz5nc8b4RqNjDcEkhH6HuPdI1o3pRFKIWMcQQ3iasRXpsdkBP6pt
	qdjBdSpyFS8ViwQ8f8qTX9N3DZ8RHHfe1Ah7KQKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f118023b1-48c4809a-0999-4b6f-8cd3-fb3d27fece2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6909cc5470c3486a8e8034fd54be92252365a12926e58a512705a0e776c9e75
Date: Sat, 19 Feb 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645266084
