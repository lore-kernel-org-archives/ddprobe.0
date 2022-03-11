Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CBE7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646982984;
	h=To:Subject:From:Message-Id:Date;
	bh=aTqrwialD5+z5T3GReLvyMGjR5XaJuDfwi12C/RWMho=;
	b=XQgj1WhxxowAWp11LSw7E/jGiA72xO/IyRg5UDcJ+CyZTc4UszC/FuNQHwQCHE8O
	0o6ipUKMUZzEFd3IxzwFILxfV2QzOGoO9+ec6sXoHTUTF2+dm8Ykrp+YXVWuTfsMHSM
	nLC1k96IIYObkqE2L/yblHSi7ZvIvzV7RV7wMG50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646982984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aTqrwialD5+z5T3GReLvyMGjR5XaJuDfwi12C/RWMho=;
	b=ilAiskPVZYzDb61rNq8FxqoxFaasCtnpSCegSKwqZKkUW5wKjTa7MVpDc76fIm1v
	5+wb1LdTc1k1YhRq2NRRsB11sVakm/B3h4wNlvNG9kKa8GscSPHHuxjkFtyUhnSsgo1
	ddLjF9ZQB2E9yzCQa1eqYrsvYX4e52PxLUOKfFnQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77d5f44f-99cc17c3-02e0-4b00-900e-1d01925cfe23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d899ed31fbbcf5cfe0f6443cbfca735d5492833da1cb1b58018739799dbe8b34
Date: Fri, 11 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646982984
