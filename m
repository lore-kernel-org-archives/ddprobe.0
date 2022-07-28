Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8301101
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659001853;
	h=To:Subject:From:Message-Id:Date;
	bh=JWeOypcpRqzf/lnOJVh1LyDKu60lHjOvD3XDjDZrIBg=;
	b=NRog/Id8jPxNSkSb24e+UN1AEdCRu/c+eF3t2V8apImS2xRPKOj1YXHNP3tB0JZI
	RT91mIJHEV4BZDNmSngtWGTqreALUwxcTZ6Pgm7CGvWq9cZaElskj2YK85p88T4U3y9
	NU8DRXdUO+FYsqNypyHlwXwddi3VRccFZ1u2M+ag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659001853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JWeOypcpRqzf/lnOJVh1LyDKu60lHjOvD3XDjDZrIBg=;
	b=Jt6j56Kx6YWKhLiOzjmPqcBltN6StKixpi/qiXu05YAqbtfveIcwCKqo1W4RhtjP
	ETjOysowvYyZ+VDk4ZF6PTBzrQZeIekYFZ0OYtyL7TyspaIalCF1mTiaAR+KL6L/J+W
	ku8sgKQ+LNRkMrw52ABUvZyHi3N7Vvig0+UyFYAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182443752b4-b1d94172-bc56-433e-94f8-e26d18a9f32c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ee8171f769a0720d5a3497ed2a493fce10fb125453cd2f78350a303fac7f537
Date: Thu, 28 Jul 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659001852
