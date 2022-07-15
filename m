Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27933538C
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657926412;
	h=To:Subject:From:Message-Id:Date;
	bh=ZsWujqwsORw369BnKM3M4eWkWdyaaVyAow1yQfeJ6II=;
	b=dXJViP2i/XsDaO1700sYZB2aBsaSww64vaiJkj6632w688IldwXHKLc5RUovhsK8
	bx3d0/zEs94zA7uoO7eKE35SnGxNFfJrN6vZra6mOVivktiaKbUJrph8Le0sA4tA0Sc
	9Dj/CLXFqfVEOtwxMatdGmfCOF9mvgKPh+phAx6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657926412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZsWujqwsORw369BnKM3M4eWkWdyaaVyAow1yQfeJ6II=;
	b=V4H+hD2tHqLOr34MkFTwngzIiuuXq0gZE/6zBD1csPQ5UlDCrER4eUdGbGT42i8X
	1/de5Vf231AAUke9MV+AVyZkM2iH0SH7C/5nio/XQ3EYqpG/OId7ekqYwZd/zrJv1bM
	LIHJ79GnqQ3ZiJCaiXvkpbKNdllKHU4YeBIOdo2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182041d67fc-4ea9a92d-3285-4f92-ac2d-d975c7db5f3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4ea8d40583fed4d1fd38cde615954d465e53d104d690783a7b097455104b947
Date: Fri, 15 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657926412
