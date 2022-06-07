Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F947C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 19:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654630019;
	h=To:Subject:From:Message-Id:Date;
	bh=FmpleWxvOrQuAYO4lFpJ/iHdm1ezplcaIyE8F3ptDfc=;
	b=WETfO6DmNcazCbHvjEBd9hpMMJXmVGQamIJmt97LF81yO4QrsvWHmE/ut65/sR9B
	jkQo7H14X48oaGM+e/IZM8AVY3xQNm2M4OZ6+4jXU7dSGVSRyMsXvB1Kwpew3ZY4wHO
	i3+m67DT4koR4mTd6JRoOeTO50jQRg2XXRgq5BaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654630019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FmpleWxvOrQuAYO4lFpJ/iHdm1ezplcaIyE8F3ptDfc=;
	b=CGnuDu4kWdVjGsG3dNCq+qLv0T6ZOy/8q9vD/g7/i17FE87xNgEWLMkaEw2qS3ao
	27MjPhiNOvJfS0UND1Qjts0wXOwhiu9Bj87CYlv4VvFjCd0X95CIMjW+818LxiJzAwK
	39FlIar9TKpKJLYXjFzQPYqxPtNvDjQmqX6QsAco=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813fa270f2-63407f2a-1918-49b8-840f-8dc5c37f84c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79af7bb054b26b0d79bec4b5ea6fb400397d791b3e49997250dcaf5a3febc9a2
Date: Tue, 7 Jun 2022 19:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654630019
