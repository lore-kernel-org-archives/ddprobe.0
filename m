Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411B1559D
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 13:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646054184;
	h=To:Subject:From:Message-Id:Date;
	bh=v5tI2vtXIugE16D1zNMZhxK5azLV9nvb0IfRC0oO1TY=;
	b=huXIITq7RfrnSYaPPQ2Rx/A/BU7bE5fKOZN+yybwiEXjDZSmzdgLIKox3LC8kzy4
	17akQoaXqBxiQDwCeF04S3FR7szGWXNJJg4WVyeJbpJ8d4uTvO1oDSJCKXDAEz1RgsB
	Cog/h/bFpQLzkHjp1kZHRjgHXPUxBywldfSwa2fI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646054184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v5tI2vtXIugE16D1zNMZhxK5azLV9nvb0IfRC0oO1TY=;
	b=DNDvJH/BqW+pzIznyrJnTdnFvuthz1mnVNz5OFHf7S3WviKi0IEBnHZUY+T0WDdN
	yhRj/3vPzN8WG/5VUy7Ou2ObvfsuyTDhAM7yMnr2iBjbn6vnGWHmAaQjlfvRQz1pdyH
	hA4sYuok7z0GqniTyORUv2mrtNyC3iNDgme2KF5o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4079972d-6400eb91-83b4-4835-8a09-1d82a57e0f14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33edd078a947c5acbffaa22f731335bdc81b57dbac6000751bd75998ad813a42
Date: Mon, 28 Feb 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646054184
