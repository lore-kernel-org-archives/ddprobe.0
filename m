Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2348321E
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 23:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653521579;
	h=To:Subject:From:Message-Id:Date;
	bh=g+4NE89l1qzUvvQx8yi4TjCJN8zwrA6yT0aC84S3VU4=;
	b=beOeMkYAffBQKR30+adwaVSay9LtBkElHr1HEyt1aQ9xvcGRYJtiPcrREf6qPM2j
	AN1lHwSJGRT0ZvC5Mjb+sPJhOZoLGGOClDhZPoo+foKeFHbp085qdtHHNXHjwQLN6AQ
	R+kG48kHdMfUkVcE+SORTguKUyOWQq9MPTyZ6o30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653521579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g+4NE89l1qzUvvQx8yi4TjCJN8zwrA6yT0aC84S3VU4=;
	b=e1+/hKwozT0sWhA+kc+Y0bmXbYHz7fkceHb4gCKPJCGf8Fy7cLqHi+elpT3UfpBb
	cy3kw9rSYmr+bgPVnHr/Z5zQI3G7l8bMyGOmX3+QQ50ta7m8ZnOJWxuMHHJZQwz+pm8
	2Sl+XG4abemLKI0bHfNdaiwkI4wz/XV6ULkPtjLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd90fd1d-9047caf1-fdba-44a5-b501-fc14097a4899-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e1664afb1f5e76656eb5e7e6895078c239cbd154f907d365a4de6deabbf6d8b
Date: Wed, 25 May 2022 23:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653521579
