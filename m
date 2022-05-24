Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C49A7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 05:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653369659;
	h=To:Subject:From:Message-Id:Date;
	bh=4thdeEbl7PoMIHyU0iP7KzTd1nOInO+BIF810BTQEDA=;
	b=SG+h7jHtrfNl4ORH4QFi+Ek+KA/lzoPtLzqN6vToA38+cAFFtPvI3ko/GxMrYaI2
	zespVZC+el/sBr/Sz4Tqg0UKoRoRsgJLziCJhgDR+xyXosJYAH5fR4wgDdewAq3mil3
	HIXe2jXeSi3hkAUSv8DT5BbdF99vAPmg4yigT1TI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653369659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4thdeEbl7PoMIHyU0iP7KzTd1nOInO+BIF810BTQEDA=;
	b=PmivBX2jzC7lm6mwcr4TkNQjmTCULyW9N9RJT+xmj1OYvdqKj1EB9yEpdlvwoZTt
	HhArR9pCOOOO7FjEHoIowDheV247WN7qgJVwMeWRIa2QSeEcJ1pCJ4JYPeMDX7f4hjf
	HnThglEkPJJbiy88ki5J4u6gVZyqAh8gd6IbgJHI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f482df60-a30ecf54-98b5-4118-983f-287c6e621874-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3672e858095ceeb1f0f2459b04e34753d8e486df6cdfda2733e300592dc7a68
Date: Tue, 24 May 2022 05:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653369659
