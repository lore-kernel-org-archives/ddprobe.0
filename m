Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C5E28E5
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645140385;
	h=To:Subject:From:Message-Id:Date;
	bh=ptYP5rMsx3fxgZ70JnCdG0xbGoUJzBKYQUJ/rooFF2o=;
	b=AFafKrdRrBO+O5FdwXGoY4YdMOqYhb0ZV+rUcwMNDJrcIssHt6zK4YeI6Y/5Pdfq
	YaQGAGEr0g7+iw3FbaBdvf6KUYqDjSA5lS73L3AR7MgZcydG3kqx6vY3OwyXp7UDfK2
	FomLijX3udRkegToUXTqOOx7WHLW0G2jVHDrbvBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645140385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ptYP5rMsx3fxgZ70JnCdG0xbGoUJzBKYQUJ/rooFF2o=;
	b=FY2rWtEl6p/B5fqGlqSogejqSmC/ykcUYS7VwAb+uOot1BkxBlwZjxMWoHx7CmG2
	mjbaG8HFSfqgtx2h+GfvqEZCuMJ4yJiodyr5fCkX5odmrbZ2p36Z213bdOz2JyMWvSr
	3N7oNGwcBe8pm0thgNxu6rGEVg4UdMzietCcBxm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a021c13-d6dbdd17-960a-446f-a77c-7d3fd5d2b800-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e1c50712f500ab8e55302d6f64b33be7f1bbcee021fcb4343f2ce86846c1a32
Date: Thu, 17 Feb 2022 23:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645140384
