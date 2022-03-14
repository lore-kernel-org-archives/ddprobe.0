Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A002F6AD0
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647290184;
	h=To:Subject:From:Message-Id:Date;
	bh=enH+LqiZOkf4KeAWGSkicnafIh0ucsjAhz+7X1v6LJA=;
	b=JvTBDLL3fL7xWVdqi5ZSglmwlqdcVqD+zHH2aZxfBZxAO7YMs1eOUYvIcwRVcQzh
	X+JsmKgZWwN9S7O+E5ShZW9RAvJUdQulJ76aBWYOSZhOoHIe2s+7mcWBNkPWK1fdI5D
	vngSF0hUAOZDaMz6iI7xngAMd0++inOR8ISrRMOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647290184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=enH+LqiZOkf4KeAWGSkicnafIh0ucsjAhz+7X1v6LJA=;
	b=gdCBA2mpO0Bj7UBE4aTqsvnlvKrFzQEwWpVuI7cHXBND7zRjpX0szKqZMT2t08DQ
	jHPsfy4fie1S8IU3nGZgvaBwIukTisf5d6XVkxYzwBC8Iqv6Sk8jAsbWl4Sz9I4TeRl
	HMUtKAGlSBL4J124bkvvXJFr5mZEfG0X+syLLH8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a257436-62f2aba7-505a-4333-bbd0-58d58d6e88e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de48719f414680c6f519feb3c4ec4604902124c481a9d0765c2775de09a4acfa
Date: Mon, 14 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647290184
