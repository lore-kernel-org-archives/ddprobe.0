Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9734A7F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659579052;
	h=To:Subject:From:Message-Id:Date;
	bh=igZLLDmcykeXTLtI+2II3CllRM/TlxHtcjoDBF6D3JQ=;
	b=aYCp76FNaoQ8tluI6Kdju3U+eKswUZXeRjwBxyT3wOvcmJaW7NGu92mpDrRxJ1qf
	tSPX0MMCNuASfUuIZoujck4v7vm9m+7Ci/7uq9OHY9W8AgfqTBBdE0mwIeEsRKjwJOJ
	TdF9PvBJj6wwlnPI7dwV8HKny9JgMrNMsu4wqXOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659579052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=igZLLDmcykeXTLtI+2II3CllRM/TlxHtcjoDBF6D3JQ=;
	b=A2BPYxiZYEnHA8TTEa5ucRBj+PCBuJBKVlzhvBOjLzHzeFUOUHFbvVedTG/mBRi/
	xhTJdGfdYg3l0CJdUZKYf05m2YWdn13mmTzvyYlVyNDB5DOKxgP7Z2gV1sVPV0Q49S8
	JAODDRdNwYnadfXvqOilYJZ/58w4ZoRvnPgG8egc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182669eb292-01fb5a46-5e58-4b4d-8c5a-072ddaa5bc7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cca7da4489e32833a6667e226e239e97731ca450d34f8ee8e0ee7e9dbc9a09f
Date: Thu, 4 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659579052
