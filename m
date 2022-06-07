Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155C57F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 05:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654578599;
	h=To:Subject:From:Message-Id:Date;
	bh=yFk5fi7chu3jIGdjk6nbJGeZDxejoVuEHOWT1UatS5M=;
	b=Z/Dq4lq2YnHTFAs5EBKaGG76wwUxFx/01M0jgcEFNyT/rVrUePHtcP6gmiKgt/g4
	K/nqZzL75YcBkWrNWKiq4/Oill6ZMzosExR3yykL86Gbz3u1ThfWxi8DYywo/HoBMwZ
	ZFzq97t7K5EhF9ca4D2oVDAxNJxMce+7tjh1OtbU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654578599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yFk5fi7chu3jIGdjk6nbJGeZDxejoVuEHOWT1UatS5M=;
	b=IUHaG3VLWkuNWi5Kzr9Zw6saRiC0wYMPk2NqPFWByRX1klgZxSCV6Gexg99LPgq1
	OzG+EcAQqhD53wlu3+bmwbvIHDqbp21pugXvFBCeD8yrxXZCdT9fvppHJbA3Kgkwdd2
	79wqsMdTIu4OjQWTdP7mIdGN038wJg4fjWV8wLQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c91d534-c0462534-1779-451e-b224-defab16e5c95-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef32773ce5fbfd3dfa4d6ed8dabefa6987f1936d72ae1eb8ea40f6518152b7a4
Date: Tue, 7 Jun 2022 05:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654578599
