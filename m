Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3E1257A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658082413;
	h=To:Subject:From:Message-Id:Date;
	bh=jk0SeM4Q8kqSx9OwPi/+5MhIR06Lmsg/5QdpZn5SH3Q=;
	b=No9OiI2Y6Dnd/ZaLsNchAPpr5Pz13ssOAqPA7k9RrWgS45NteG6sF/0c2VkOvTQz
	OYKSRzdHVCcZNsTbhnM+FbmI7XpstyxTCHplBuNlBdX42jlGb25YvIpMXpAZvYDVF5S
	sFNRwTLSmkVE30ZRLY9KuZxdNI/FFxaV6bk7B5MU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658082413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jk0SeM4Q8kqSx9OwPi/+5MhIR06Lmsg/5QdpZn5SH3Q=;
	b=PRcqj3kqFD45Gf0b+oNAJFrXCVSv3RRlLpRmey87IuBz739tty+Bq9eY0csClpHj
	QDcabwXlf/6GKhco8nEy5oA3O0bLh7hXQYDQm0u6T7i1MrtVbUTpaaNhbZbrfrg3ZAG
	oAj8fk56uVZjJFjbvsS8Td27Mm/4jHnM3SUgGdlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820d69c73b-4f32a2e5-b4c6-4f04-adf8-4fea6fd80775-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd874134752a1347f6dddf0609cfe618abe0ed5810b73277533eb9a25acb6edd
Date: Sun, 17 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658082412
