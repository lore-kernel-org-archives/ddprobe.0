Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2627E
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658792212;
	h=To:Subject:From:Message-Id:Date;
	bh=vUsLk/Ltuwo1AtAGV5B5Fky+YhjMHjjvVN7K9d06ORk=;
	b=d9xTd6ItK7dwIdxJatU349UvTM25o0Mrv8mddD/rxcZpovCngpB15O4w56yaZMNm
	NwPkmpYG4fJS1+lg89A54IegIJHhab8ndlLG24hyuQcnBD2iF8L6/CyLsIGfun7JkL1
	0us5Dv1hBLE1+icbKNz1RQJ6Ijzd0r4+tRfXYNyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658792212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vUsLk/Ltuwo1AtAGV5B5Fky+YhjMHjjvVN7K9d06ORk=;
	b=DvAM7kiNHqG5S1VMa+el0njXHtdnkXBtT3F7HyINcUiv5G2mBxgUdHsJmplXFDCl
	vM7XbrylZvPLIx5mbNQCzxoOxQFYFzwclw+1WwgHNUN2tdLqUhmvH9U4CiG/mqrn5Bn
	uvP8YLPkisnVSdhL94lbgTf7J/SnqdODjXVPBks0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018237b877a0-9937fc01-7554-4486-a57b-25d70ea9a808-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 688cd5241fb8489eda930fe19684c7a71c5648f1bf84c711e4907ac3e0f1325e
Date: Mon, 25 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658792212
