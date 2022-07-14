Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033DA17EC
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657783612;
	h=To:Subject:From:Message-Id:Date;
	bh=EaJT489Bl7xOgvXv6rWNP0XCq7hfKQAZpw8XUlcLghE=;
	b=JUbweHOi9GRxLjcVfplXpmEZ4xpEZs+URqeT/u00Gvw7NzY8JdQLyL+/og3/UzH4
	XpkwhaQ1PuK4ky7HIE2hFQZfZBvH7ouwoViXwEC5gXguTCondZ2hXv1KY+ovQnaXgDI
	0Mqci/janGNnlNggPYRKrsSeE0HHWbUsnOEv8uhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657783612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EaJT489Bl7xOgvXv6rWNP0XCq7hfKQAZpw8XUlcLghE=;
	b=jJbbi/D3soLXuZVV/Uu0hZWuRVQNimuhnh8O3fmntvjIxf8+SJZSXmv31AxuYrZz
	q8+mxh0ct+QnR/99MB0dFfDC3Nyslypss5NCJNkEQ02dxV2zDJZBTixnt6RrNYPWeyh
	Y0a6kculPdC1ha/q99BQqIEwfrIA5G5n2OS1P+EU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb9a7389-991d7835-f530-40e3-b9cd-781161f96bc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1b470620f7671ba585271851359b7aa1b0b59d5cbc0c0f82ff792c9e159e61a
Date: Thu, 14 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657783612
