Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9BA37A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646901985;
	h=To:Subject:From:Message-Id:Date;
	bh=YX4VIXgVtXgNtFRK7XSyVNC6g+/A4bF+lIhFNxhpMWg=;
	b=BbXtBWw1Ah1aab+R0qSKpxtHuS3x/QlaPK47eUG0gIG1WnATcHQ6Ity8Q2rRkv0j
	sSTEBM7ZbklntinXGtxD9dBVdiPIX3u0IZeZ2RZOg7d5mq7iP0JHxgnaJB9sYaDL0M8
	DCGcS5DhQJglPk/oy8tEeyOYWckiaJWvwDT6VOis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646901985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YX4VIXgVtXgNtFRK7XSyVNC6g+/A4bF+lIhFNxhpMWg=;
	b=jtBQ3qzxx8e9hsPVL5tSpWbj/fln/fk0kYyUZsX500dRJQ9QKjd2ONy4OEoQezlH
	isH93D3tRJ5hGsM2Lct8VMtvUbee92duKjvfNyxsQKgQwubQgb9ungZD73zQyy9p8cl
	+69KkSYsJ5BXQfYRmihBgSja4yQLuAuy7navJu8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7301fe08-7166f24e-c471-411a-930c-84bd22986353-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca096c3598e0be0e1972fdcae12cde030c6a0ba88af806a327ecb111fe2429f5
Date: Thu, 10 Mar 2022 08:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646901984
