Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F38139F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 13:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655904239;
	h=To:Subject:From:Message-Id:Date;
	bh=0jxTaX4NJky/wBoqTStesOUXUkvaNyYezy1FfD0DYN4=;
	b=FAgIVrjZyqAKzMfnGgglEkdr0MlJKzPmPL5NtfbT8ky9Tb0L3uGGBL0LVw5LU7b7
	AmHbOccHq0j3U4iaG3sVJ3UL10+0KCMHuCH+NNuSZoYw54kTE9icmT2PkWiuFVDufIE
	K2AF+PCg2XyZnYBxqZfylx5ZHxT9Z6SSn2wZDWU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655904239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0jxTaX4NJky/wBoqTStesOUXUkvaNyYezy1FfD0DYN4=;
	b=AdEbn4IFM0ZEvcvwnXfIDvpQbrfB4cspIHceesdHaUimt5uO2W6GofJeVFQviwPN
	O994qnZ+QBdLm0LJwJ7/wZN2wn0Kjy9dY/nQHsBmu29FLqMw4osNsPx7qc0E9OzB9E1
	CFijJ4OLF1DAyA6HgudqbFv6Ng6f2FQF6UdSDLcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818b957ea9-51661f9d-44fe-44b1-aaf1-175e83c90d5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e61a72c691dd05ee9ee16ce6860d8df54d75378644fe7c4f6b8e1cf0d7a748a
Date: Wed, 22 Jun 2022 13:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655904239
