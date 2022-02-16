Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D32B1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644998184;
	h=To:Subject:From:Message-Id:Date;
	bh=n8O3KHXqilOhNocW2WV3lkX2TM7D+V8pSnLF2VNVv+8=;
	b=Yyyb3MKjfvoJj1tQNRTXou3LN+A8bQGwxv8N0I5QYONRUrzgF/LUze3YqXpVIbuG
	TkjyxJDlF5CEImzK7IAODY72cqAyVcNgA/R4BKdqxd5x/dqOr+qxE5GLuehqlkIOib6
	eTziXqAiTwOjlO1GtNV0LQk6r9KDPjp+PO4rveU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644998184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n8O3KHXqilOhNocW2WV3lkX2TM7D+V8pSnLF2VNVv+8=;
	b=dxqBywcW7UlmzjQ4wjFLhbM3YMWwzMCt7m/TTwFmutHO0YodwiAYihf3FRIl1mXi
	lJRhVm+VrFsM9ChO88tEckiB5uSdd8PRhcKdVAGxubRFQ9s7cX6Rn9EuZO9tOQdaLXJ
	Ch8QjbtHwPv1COoCY0Vs9lId5CP8z6ohhxgpV0GY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01884f4b-d9485847-2af7-47b8-836a-b92f99e25ed9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 259f077b10ffc9efc2305297f2e606fa450e132bb46926cbcd205d5ec8a7f55d
Date: Wed, 16 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644998184
