Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FB27E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 16:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648227058;
	h=To:Subject:From:Message-Id:Date;
	bh=xF7Uu0Qjoyw4cHZsbRBHC8Emh+GkbV6wJfH3HwXjrWo=;
	b=aAo4zVKO6EHI2ukdxNNzM21l3i7pIZ7+KxQlRZwpcSGivydw5jEQ0+6VPmiPp43I
	zOzt9CrQ8KaAu8VncmdUUWfPebW3wtIbVXN85+K/Efvzuh3U19mUrpNxs+lq91VJZVY
	VKPy/dSrw71TnNoqOzh6Kj9n7UAXyx4NqJwDZpug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648227058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xF7Uu0Qjoyw4cHZsbRBHC8Emh+GkbV6wJfH3HwXjrWo=;
	b=fahIGifXp7O8peH+mAAiXHCFpmaV/ZToDKiDvFtNPRjAMwzV9BqmSVjCZMpvR4Oy
	zomBdYsp20WxNIs8k6fDfkd47MmDffwD+zFm73VGN/B3bVSgnioVNgqzxfQL5tU0Nmf
	2TvtPkWh2svp+NpNEQPa0wd4h1Bw7GpO+q+rJwWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc1fd02d2-afdf15e1-3cda-4afe-84ba-3a86c493304d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef97c07a8edba53ffffc4c4105c4ff3200862764270ed3ec4a62fef26f5ba399
Date: Fri, 25 Mar 2022 16:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648227058
