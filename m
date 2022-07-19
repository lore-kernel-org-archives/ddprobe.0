Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C95F53B7
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658272012;
	h=To:Subject:From:Message-Id:Date;
	bh=oAsZHKHU4P5WyfWIho3bbKt5DTWR2dq1XwYqw43PcRg=;
	b=OYq3Nav3Hdp1NziFwpIIU6nYOXvJyWSd+7yrHouVfOsEWO72Kmp50Dq2c8PGbNyf
	HjsLN1g3ERhUADFXKRe7Xt+abyN9aIfrF3VDlLW91WETFeUcErtiG3PfMytscIK6Zgx
	75TBP+ktAUIURqvvzzXKeuXsfZF+C4OgvZk/Uxas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658272012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oAsZHKHU4P5WyfWIho3bbKt5DTWR2dq1XwYqw43PcRg=;
	b=H1zrGF8bMbbwIu4j+43D4JTXB86/Z+6WQfdxiymroaqIL8HfEgUb8HspBbKEiNp6
	9zrz8g9whhpSjqj42+IkoVbNt9l/s6XVynhOMGOz8wypoC+eBNieNsqNGpsQu8jeF8d
	oOmyLsj6aGnQnErpNG9GgWXF0vZRJBxBFoNGX/5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018218b6d84e-2f3287d1-c90e-49ad-a623-63addd9e40f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 261bcfdeb5f566a8c362988b949af41194e2574ac63d979f352801512205fe11
Date: Tue, 19 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658272012
