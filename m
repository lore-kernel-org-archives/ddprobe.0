Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B0215D2
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656959812;
	h=To:Subject:From:Message-Id:Date;
	bh=lMlLhQTPCKpNhxDHfzWtQcGAhX8wvIo4joYcTsTakJk=;
	b=jDMQAsp9GWSeVe8YN1fbaFhjb5IbqPDxx8ZoWL0VoquHNJGHUOpLB3/HZ66+GEqm
	IBxEIYsa8zEDwKC86hsFZ4xo+1e4MU/aqFfk5SjHTsIN1ogDvyVxYxK6aKCSOWU7zK+
	x0KtMwjFBPmM84EIy7IM6mHkYcttMbRptdowFMhU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656959812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lMlLhQTPCKpNhxDHfzWtQcGAhX8wvIo4joYcTsTakJk=;
	b=GUJJ9qHweZ6VutX6J4YFsbkOv7Hc+hltHjQ7MnNlyDVlKH+eSOsMS2yX0EdZ+aXC
	6bIKzw0OzIOlESdMurpoTL7y/4C0SmJJe5J4BUDR7LDAk4cANn32IhL/stqJivHNTYD
	3NLstLPTQuj1JUjZepKP8lsS2PY3Wopi4pgC1joA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca8042d0-8cddd37c-3288-4797-a830-6652b686c2e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac5190542f2604b5868f912f399c4aaf1781ef0dfb99fcc9f377aa1724b44221
Date: Mon, 4 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656959812
