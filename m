Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DA0443D
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659290452;
	h=To:Subject:From:Message-Id:Date;
	bh=QXm8rFaaNZKt6OB1nIdAjsApjWSWiTof6CjDVe4UZuI=;
	b=BEB/Oqfh7w2MtBp1mZITV+gJYohobXAdwTf/Ga2S6a9bWjGuiykMsd0VzKshwKfm
	YuzfVbd95wH1/uLfzS07zsvM+sohmZAoJMDqJBREEDOzJzm7v36eJtITqLuTyrhjCzk
	iX9Y4SP1cCS8qmnFKNSiODvqdlpjsDMD+w+YkPz0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659290452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QXm8rFaaNZKt6OB1nIdAjsApjWSWiTof6CjDVe4UZuI=;
	b=Bo01K4/BshruDOiJe+y1ptCPvsvfK2h42Ghot9nkPS+DO2pUCO89OHZ0pBhKdfmL
	lt1bOC0JDqTVHxzyv3gXJsQcaHufVQxhdPXyi/StgSujpP/GUKKtoX3JVVi6h/HBR8D
	RQMbA4hPT2ZkajTxrpdW6uWc0RSFe8gLn4MogJYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182556b0224-b30c0a17-7456-4734-bda6-ec35da71851d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4025bca9091b44177709d928319bcad66e3954416330e36b2519b999f00f7520
Date: Sun, 31 Jul 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659290452
