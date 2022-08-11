Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EAF46A8
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660240853;
	h=To:Subject:From:Message-Id:Date;
	bh=F4gioZ5XdiBVYAK0Ahq5uNDrx6PgwDwi3LgI4xJqbWI=;
	b=KgFfbkb7D63jirwZZAa6z1AKXn9rg0UyetQwiHAvXtAjYwrHc0ls962QrXizMDKT
	JODH0RFrazXhYK9Dau37XWS+wHmvS8rz9WHD1FzUhFlu4A2TQGQh5RW4BqN5OHH/YtJ
	UNkFacMjTMgWNIuIVvsLQmU3rB7Ea0F1+cGXol+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660240853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F4gioZ5XdiBVYAK0Ahq5uNDrx6PgwDwi3LgI4xJqbWI=;
	b=SVHUPYGzmE9jD+4GNn1+HEHpEhlaBKglcRM6tpQm83uGqHhL4pl8Zyh1bu0RRrBw
	+saG0fkChB0LXZ8bmAaIY3Fah+rrhJQTVT4yGeGx0YXPyzGs6ZpZzABUkk9AapT2JE6
	leSCO9PknpbGEvE0RbZsAcTs7QgH5lHwlsa2K440=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e10f6ea-4590bf76-c835-4f95-a7a7-42ccd645cd7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cc9b7b10b25165ff86dc4d4b108e298a5765b850e8eac895ff4eef09a02befd
Date: Thu, 11 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660240852
