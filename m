Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A63F2C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646407585;
	h=To:Subject:From:Message-Id:Date;
	bh=U2FJqYFrLmOimTa3eQqwik6OMJ+mhF4SyYMri45VCaE=;
	b=A9JOJKDo0kdalPXrZ6B3rFun8ZDWayKZNempUsCaXu4ukiWcxo0L4mAy+Wr/ossG
	IsC14X1bwwyiRqc0nY5AH0dqmscymGfNFGVImxEGXHqxgBTgyiC1NPa2r17njV6+QGY
	t8hT99nYB+M6GIqvZ+OG1zMpI7AgsbWh72uGpEZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646407585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U2FJqYFrLmOimTa3eQqwik6OMJ+mhF4SyYMri45VCaE=;
	b=VzVAcTozdwJCOXtlzRjFd1Hglqk9BPliSuUq0Fg2F3BAO+pjworyTjMLmTHHG6Y6
	OcnfdCJ5CB0YNF3xk9N3lG7ubrQ8q2bIXyapfkP8etlgsSO8/xalwfJ6kMTJ6eFkbA/
	RjZzFseurTf5eTXmaYBvN4/pABos5fbFN53qV3lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f558a0bb2-3b3c8639-cbe0-4315-bda1-d026447e75f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b97b82c1fd55a7f92242b5c0f67c8dc4d9cb08c671bbf32669af2e823fafeaf
Date: Fri, 4 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646407584
