Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833CD440F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660001452;
	h=To:Subject:From:Message-Id:Date;
	bh=S6Cy5PgLwcdf+ruiylpJT5T7tObvxkWGg2ZLRZf1qd8=;
	b=I/1Nry8LXUQ8+fO35i/JmnepgjsC8ZQNewreWZKnLYWHfK+dm8jCYvpK4el8vSAf
	2y4uMnhN5Eh/xF5/1eeeALM9CjkqdDtg2aMvmy8RptHojQVzNX+X+4PesB8Wo6MA8nq
	5zRRDlOo9oT4THvqb2XDhySA3VGdNHq3PVghZzwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660001452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S6Cy5PgLwcdf+ruiylpJT5T7tObvxkWGg2ZLRZf1qd8=;
	b=TEEu9NoDUBzoXPnMumwa12uvBZ8d4vZ9l/GTU8oNcAQGoHR6c/zIxd9kU4I7qaDy
	LSg4/KfQZsQjed/iHPCQrtek5ejTo6IqvW5VRU76DNSPVJDc7lTS/jijik2+zbcYh8y
	IN9LhwTPQUoVg9XrhO3JFWMXNfFeNSB7Z0KHL/R8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827fcc01f0-24ef4db7-1660-4852-b677-43186cfcf167-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92ee958290b02506c76ec7b25c7016fd61364c8d258f74594a716ba2a8a3c613
Date: Mon, 8 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660001452
