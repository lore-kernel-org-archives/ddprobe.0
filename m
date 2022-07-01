Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FA31871
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656680212;
	h=To:Subject:From:Message-Id:Date;
	bh=QX715iYZ47+CBWHLsh221J0hrS/3Cnat5nm2uj5tC3U=;
	b=I07sHY67740kyFGIdU+lnUjRaE8f6eZkBynpP3FNAWeeE/chzJys3zkU1WnOd955
	gm5rYlKsbKYpFh8qw/TUeRCrT9wyERY32Ws5gpz6WK3bRyN2LoyvH6132GLnTqrkhvF
	Zz7w+Yb5AKqLOwA0sHju4sYlg7aXuUkqCyB2nZrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656680212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QX715iYZ47+CBWHLsh221J0hrS/3Cnat5nm2uj5tC3U=;
	b=XFuSXgAlCElMzsYSllrtxwgXku0RoUAKgLnpMO1nHHQBTORq0eva1n1FQCt/+n+Q
	lCptKPjVXx9vAbbvBX7NcSICEXKPtSvVIPPWz+7S4OfF0kUc+h8RWCkainHys9X6k8M
	lJNacS/i7R0cH3vPAH4P2VETp7B6R9ooqi1VolWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9d5e73b-22cd12da-d8cf-469c-8b33-4132960fc8e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce530f90d66b115c7da2db2e3fdd96e9c41be604e050a555ee7dfe06c11a76a0
Date: Fri, 1 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656680212
