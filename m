Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586177F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659497452;
	h=To:Subject:From:Message-Id:Date;
	bh=wAzyacLfm96nxIXfEa3EWkRVIxP0yyNa6LOwLOYRbb0=;
	b=jmCDdIGT5wR7F/do02zQSOfy0Sb2ARPIeEMzmoK33aL1V2Y7HGf5oiM/yxprcLvM
	6N/xAHiN+2TiI4NR92S0TeihA48YoH1Wgom+0dPzEJke46+6apmm376SOYDE49brm8t
	NAaCjkjpwXHt5l/qmlxQSKMc7zgMNM3sQdc9GLjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659497452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wAzyacLfm96nxIXfEa3EWkRVIxP0yyNa6LOwLOYRbb0=;
	b=NvV8H4vxs6TN3zFI4HGvGzbEUdbM96S4A55uURedtT/PLq+AruXSo2uAruvzhlDh
	jOttwsy4K0nRUG8a8RPJTpXOJCGOvNpbOm3ikvOY8ndJny1UTOeolbDgUVXJrQ1mcdN
	smKOfL38uKpWZ8UXobfUdFLjM5dnltBB5TSnx+8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261c19456-486e134b-8cd7-42ff-a2e6-adf0f70efab0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af9189d40c4c26e9fb96a3fbb4cff146fcd7ebb6a6de85d1fdbac32b8e9c852d
Date: Wed, 3 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659497452
