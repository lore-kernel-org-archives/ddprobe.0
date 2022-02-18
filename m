Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020E24C68
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645221085;
	h=To:Subject:From:Message-Id:Date;
	bh=agoa/xb0ahKKgRZxN8UxSkOVYZ7L4NUtuAw9tRi7qI0=;
	b=J24N+htsnNX1VRf553PTyMpa+XkNYjiTxyL/aY87FfYE5dZcqBweCOYbJBm4sG4d
	EtyYuUzg8NMnIl/1fwLlJoNtbNoU8jDLsNU7w/Ma9X8uavQYbKtWUp0a9xA7dnnAIk6
	C/sZKFW/cecboOEc2e+kiVWk25BWVQGR0/LbWBZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645221085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=agoa/xb0ahKKgRZxN8UxSkOVYZ7L4NUtuAw9tRi7qI0=;
	b=Y7sTZx5j4fwAUJd5e+69v3vjI88LWtYW/tCdcAUwSy1c/qlU5H/iSe28wsLnB/Aj
	Mspb+iRmwivM6cMy0ZMyUXuyAdpR6aZn83l5729JZmjpNTgLDQ2MPIvdCfvC0vrf26p
	jSK105vktOtvw+bWv/TGcr760J4xKgdijblTum6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ed17ebc-e394ed77-a598-423c-9efe-6cc9c335bc68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b55d713836ba2389566c6379fa3b9479d08859a662eca11012e37ecf031b59dd
Date: Fri, 18 Feb 2022 21:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645221084
